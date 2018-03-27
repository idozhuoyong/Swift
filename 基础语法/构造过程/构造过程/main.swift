//
//  main.swift
//  构造过程
//
//  Created by 卓勇 on 2018/3/27.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 构造过程：使用类、结构体或枚举类型的实例之前的准备过程
 */

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("temperature = \(f.temperature)")

struct Celsius {
    var temperatureInCelsius: Double
    init(formFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(formKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(formFahrenheit: 212.0)
print("boilingPointOfWater = \(boilingPointOfWater.temperatureInCelsius)")
let freezingPointOfWater = Celsius(formKelvin: 273.15)
print("freezingPointOfWater = \(freezingPointOfWater.temperatureInCelsius)")

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

// 默认构造器
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()

struct Size {
    var width = 0.0
    var height = 0.0;
}
var size = Size(width: 2.0, height: 2.0)


// 指定构造器、便利构造器
// 便利构造器必须最终横向调用一个指定构造器
// convenience init() {}

//
class Vehicle {
    var numberOfWheels = 0
    var descrption: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle: \(bicycle.descrption)")


