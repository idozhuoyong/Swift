//
//  main.swift
//  类和结构体
//
//  Created by 卓勇 on 2018/3/22.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 类和结构体
    类是引用类型、结构体是值类型
 */
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var someResolution = Resolution() // 结构体实例
let someVideoMode = VideoMode() // 类实例

// 属性访问
print("结构体属性访问：\(someResolution.width)")
print("类属性访问：\(someVideoMode.resolution.width)")

// 修改属性
someResolution.width = 100
print("结构体属性访问：\(someResolution.width)")
someVideoMode.resolution.width = 1280
print("类属性访问：\(someVideoMode.resolution.width)")

// 构造方法
var vga1 = Resolution(width: 100, height: 100)
//videoMode() 类不会自动生成成员逐一构造方法


// 结构体、枚举、整数、浮点数、布尔值、字符串、数组、字典都是值类型
var hd = Resolution(width: 100, height: 100);
var hd2 = hd
hd2.width = 200 // 修改 hd2 之后，hd不变
print("hd.width = \(hd.width), hd2.width = \(hd2.width)")

// 类是引用类型
let v1 = VideoMode()
v1.name = "弘基"
let v2 = v1;
v2.name = "Mac"
print("v1.name = \(v1.name!), v2.name = \(v2.name!)")

// 恒等运算符 === 和 !==
// (恒等 ===) 和 (等于 ==) 的区别：恒等判断类类型的变量，是否指向同一个类的实例，等于判断两个实例的值是否相等
print("v1 === v2 ? \(v1 === v2)")

let v3 = VideoMode()
print("v1 === v3 ? \(v1 === v3)")

// 指针
// Swift 中的指针用法和普通变量和常量相同，不用特别加 * 以示区分，如：var str: String; NSString *str;

// 类和结构体的选择：不清楚时优先选择实用类




