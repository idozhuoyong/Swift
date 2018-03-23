//
//  main.swift
//  枚举
//
//  Created by 卓勇 on 2018/3/22.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 枚举；为一组相关的值定义了一个共同的类型
 */
// 枚举的定义
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let directionToHead = CompassPoint.east

// switch 在列出了所有情况时，可以省略 default 语句
switch directionToHead {
case CompassPoint.north:
    print("north")
case CompassPoint.south:
    print("south")
case CompassPoint.east:
    print("east")
case CompassPoint.west:
    print("west")
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(1, 2, 3, 4)
productBarcode = Barcode.qrCode("abcdefghijklmnop")

switch productBarcode {
case let .upc(num1, num2, num3, num4):
    print("num1 = \(num1), num2 = \(num2), num3 = \(num3), num4 = \(num4)")
case let .qrCode(qrCode):
    print("qrcode = \(qrCode)")
}

// 原始值
enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet2.mercury.hashValue)
print(Planet2.mercury.rawValue) // 设置的原始值

// 隐式原始值
enum CompassPoint2: String {
    case north, south, east, west
}
print(CompassPoint2.east.rawValue)

// 递归枚举 (indirect 声明可递归)
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

