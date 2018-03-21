//: Playground - noun: a place where people can play

import UIKit

let idCard = "360000197710101233"
// 输出常量到控制台
print(idCard)

/**
 separator 分隔符
 terminator: 结尾字符
 */
print(idCard, idCard, separator: ", ", terminator: "\n")

var welcomeMessage = "hello world"

// 输出变量到控制台
print(welcomeMessage)

/**
 separator 分隔符
 terminator: 结尾字符
 */
print(welcomeMessage, idCard, separator: ", ", terminator: "\n")

// 字符串插值
print("我是小明，我的身份证号码是\(idCard)，今年25岁, 一句话介绍自己：\(welcomeMessage)");
