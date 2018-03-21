//
//  main.swift
//  函数
//
//  Created by 卓勇 on 2018/3/21.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 函数是一段完成特定任务的独立代码片段。
 func 函数名(形参列表) -> 返回值类型 {
     函数体
 }
 */

func greet(person: String) -> String {
    // let greeting = "hello, \(person)!";
    // return greeting;
    return "hello, \(person)!";
}
print(greet(person: "Anna"));

// 无参数函数
func sayHelloWorld() -> String {
    return "hello, world";
}
print(sayHelloWorld());

// 多参数函数
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "hello again, \(person)";
    } else {
        return "hello, \(person)";
    }
}
print(greet(person: "Anna", alreadyGreeted: true))
print(greet(person: "Anna", alreadyGreeted: false))

// 无返回值函数
// 方式一
func greetNotReturn(person: String) {
    print("hello, \(person)")
}
greetNotReturn(person: "Anna");
// 方式二
func greetNotReturn2(person: String) -> Void {
    print("hello, \(person)")
}
greetNotReturn2(person: "John")

// 多重返回值函数
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var min = array[0];
    var max = array[0];
    for value in array {
        // 最小值
        if min > value {
            min = value
        }
        
        // 最大值
        if max < value {
            max = value
        }
    }
    return (min, max);
}
let (min, max) = minMax(array: [8, 7, 1, 2, 3, 4, 5, 6]);
//let minMaxTuple = minMax(array: [8, 7, 1, 2, 3, 4, 5, 6]);
//print(type(of: minMaxTuple))
//let (min, max) = minMaxTuple;
print("min = \(min), max = \(max)")

// 返回可选类型
func minMaxOptional(array: [Int]) -> (min: Int, max: Int)? {
    guard !array.isEmpty else {
        // 数组为空
        return nil;
    }
    
    var min = array[0];
    var max = array[0];
    for value in array {
        // 最小值
        if min > value {
            min = value
        }
        
        // 最大值
        if max < value {
            max = value
        }
    }
    return (min, max);
}

if let minMaxOption = minMaxOptional(array: [45, 1, 2, 3]) {
    print("min = \(minMaxOption.min), max = \(minMaxOption.max)")
} else {
    print("数组为空")
}

// 指定参数标签（给形参一个别名，外部调用时显示此别名）
func someFunction(argumentLabel parameterName: Int) {
    print("hello, \(parameterName)")
}
someFunction(argumentLabel: 3)

// 忽略参数标签
func someFunction2(_ parameterName:Int) {
    // parameterName = 3; // 形参默认是常量
    print("argumentLabel: \(parameterName)")
}
someFunction2(3)

// 默认参数值
func someFunction3(paramterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    print("paramterWithoutDefault : \(paramterWithoutDefault), parameterWithDefault : \(parameterWithDefault)");
}
someFunction3(paramterWithoutDefault: 12);
someFunction3(paramterWithoutDefault: 13, parameterWithDefault: 13);

// 可变参数
func arithmeticMean(numbers: Double...) {
    var total: Double = 0;
    for value in numbers {
        total += value;
    }
    print(total);
}
arithmeticMean(numbers: 1, 2, 3, 4)

// 输入输出参数（inout）：指定参入的参数为地址类型，函数内的修改，函数外也生效
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    // 方式一
    // a = a^b;
    // b = a^b;
    // a = a^b;
    // 方式二
    a = a + b;
    b = a - b;
    a = a - b;
}
var a = 3;
var b = 4
swapTwoInts(&a, &b);
print("a = \(a), b = \(b)")


// 函数的类型
// (Int, Int) -> Int
func addTwos(a: Int, b: Int) -> Int {
    return a + b;
    
}
var funcType = addTwos;
var funcType2: (Int, Int) -> Int = addTwos;
print(type(of: funcType)); // (Int, Int) -> Int
print(type(of: arithmeticMean)) // (Array<Double>) -> ()

print(funcType(1, 2)) // 3

// 函数作为参数
func add2(a: Int, b: Int) -> Int {
    return a + b;
}
func printAdd2(add2: (Int, Int) -> Int, a: Int, b: Int) {
    print("a + b = \(add2(a, b))");
}
printAdd2(add2: add2, a: 1, b: 3);

// 函数作为返回值
// 嵌套函数
func chooseStepFunction(backward: Bool) -> ((Int) -> Int) {
    func setpForward(input: Int) -> Int {
        return input + 1;
    }
    func setpBackward(input: Int) -> Int {
        return input - 1;
    }
    return backward ? setpBackward : setpForward;
}
var currentValue = 3;
var stepFunc = chooseStepFunction(backward: currentValue > 0);
print(type(of: stepFunc)); // (Int) -> Int
print(stepFunc(currentValue));

// print(setpForward(1)); // error, setpForward() 函数的作用域在 chooseStepFunction() 函数中，在外部不能直接调用
