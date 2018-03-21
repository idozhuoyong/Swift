//: Playground - noun: a place where people can play

import UIKit

/*
 常量：常量的值一旦设定就不能被更改
 */

// 隐式声明（不指定数据类型，由系统自动推断）
let maximumNumberOfLoginAttempts = 5;
type(of: maximumNumberOfLoginAttempts); // Int.Type
// maximumNumberOfLoginAttempts = 6; // 此操作不被允许 (error: cannot assign to value: 'maximumNumberOfLoginAttempts' is a 'let' constant)

// 显示声明 (指定数据类型)
let π: Double = 3.141592653589793;
M_PI;

// 先声明后赋值
//let PI; // error: type annotation missing in pattern
let PI: Double;
PI = 3.141592653589793;

/*
 变量：变量的值可以随意更改
 */
var currentNumberOfLoginAttempts = 0;
currentNumberOfLoginAttempts = 1;

var welcomeMessage: String = "hello wrold";
welcomeMessage = "你好，世界!";

var errorMessage: String;
errorMessage = "404错误";

