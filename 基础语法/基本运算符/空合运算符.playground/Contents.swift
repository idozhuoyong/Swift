//: Playground - noun: a place where people can play

import UIKit

/**
 空合运算符（a ?? b）将对可选类型 a 进行空判断，如果 a 包含一个值就进行解封，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值得类型保持一致。
 */
let defaultColorName = "red";
var userDefinedColorName: String?;
// userDefinedColorName 的值为 nil，所以colorNameToUse 的值为 “red”
var colorNameToUse = userDefinedColorName ?? defaultColorName;


// 空合运算符 : 三目运算符 的等价写法
colorNameToUse = userDefinedColorName != nil ? userDefinedColorName! : defaultColorName;
