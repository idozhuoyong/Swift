//
//  main.swift
//  闭包
//
//  Created by 卓勇 on 2018/3/21.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 闭包是自包含的函数代码块，闭包表达式参数可以是 inout 参数，但不能设定默认值
 
 // 闭包表达式语法的一般形式：
 { (parameters) -> returnType in
    statements
 }
 */
var arr = [1, 2, 3];
// 会改变原数组
arr.sort { (ele1: Int, ele2: Int) -> Bool in
    return ele1 > ele2;
};
print(arr);

// 根据上下文推断类型
var arr2 = arr.sorted(by: {(e1, e2) -> Bool in return e1 > e2}); // 不会改变原数组

// 参数名缩写
arr2 = arr.sorted(by: {$0 > $1});

// 尾随闭包
let digitNames = [
    0: "Zero", 1: "One", 2:"Two", 3:"Three", 4:"Four",
    5: "Five", 6: "Six", 7:"Seven", 8: "Eight", 9:"Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number: Int) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0
    return output;
}
print(strings)

// 值捕获
func makeIncrmentter(forIncrement amout: Int) -> (()-> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amout;
        return runningTotal;
    }
    return incrementer;
}
var incrementByTen = makeIncrmentter(forIncrement: 10)
var incrementBySeven = makeIncrmentter(forIncrement: 7)

print(incrementByTen()) // 10
print(incrementByTen()) // 20

print(incrementBySeven()) // 7
print(incrementBySeven()) // 14

// 闭包是引用类型
var incrementByTen2 = incrementByTen
print(incrementByTen2()) // 30

// 逃逸闭包
// 当一个闭包作为参数传到一个函数中，但是这个闭包在函数返回之后才被执行，我们称该闭包从函数中逃逸，
// @escaping
//
var completionHandlers: [() -> Void] = []
// completionHandler: @escaping() -> Void 这是形参
func someFunctionWithEscapingClosure(completionHandler: @escaping() -> Void) {
    completionHandlers.append(completionHandler);
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
    }
}

let instance = SomeClass()

instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

// 自动闭包

