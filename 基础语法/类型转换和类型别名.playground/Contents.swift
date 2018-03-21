//: Playground - noun: a place where people can play

import UIKit

// 类型转换：Swift 是类型安全的，不同数据类型不能进行运算
let intValue = 10;
let int8Value: Int8 = 8;
// let sumValue = intValue + int8Value; // error
// Int(int8Value) Int8类型 转 Int类型
let sumValue = intValue + Int(int8Value);

let PI = 3.1415926;
// Double(sumValue) Int类型 转 Double类型
let sumDoubleValue = Double(sumValue) + PI;

// 类型别名: 给现有类型定义一个别名（即定义一个小名）
typealias IntAlias = Int;
let value2: IntAlias = 10;
type(of: value2) // Int.Type




