//: Playground - noun: a place where people can play

import UIKit

/**
 可选类型 (optionals)：Swift使用可选类型来处理值可能缺失的情况。
        ~ 有值，等价于值
    或者
        ~ 没有值，相当于nil
 */

// 声明一个可选类型, 未给初始值会默认赋值nil，注意声明成变量(var)
// Swift 中 nil 是一个确定的值，表示值缺失，Object-C中 nil 是一个指向不存在对象的指针
var serverResponse: String?
type(of: serverResponse)
print(serverResponse)

let possibleNumber = "123";
let convertedNumber = Int(possibleNumber);
type(of: convertedNumber); // Optional<Int>.Type

var sum = 1;

// 强制解析
if convertedNumber != nil  {
    // convertedNumber! 强制解析，从可选类型转化为普通类型，注意排除为空的情况
    sum = sum + convertedNumber!;
}

// 可选绑定，
if let number = convertedNumber {
    print("可选类型拆包成功...即从可选类型转化为普通类型成功，转化后的值为: \(number)")
} else {
    print("可选类型拆包失败...")
}

// 隐式解析 - 也要注意处理可选类型为空的情况
// 隐式可选类型也可当做普通可选类型进行解析
let possibleString: String! = "An optional string";
type(of: possibleString) // Optional<String>.Type
let assumedStrng: String = possibleString; // 隐式解析
type(of: assumedStrng) // String.Type
