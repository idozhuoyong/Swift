//
//  main.swift
//  继承
//
//  Created by 卓勇 on 2018/3/23.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

class Vehicle {
    var currentSpeed = 0.0
    var description:String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // 什么也不做 - 等待子类继承
        print("Vehicle: makeNoise")
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

// 自行车继承汽车
class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

class Train: Vehicle {
    override func makeNoise() {
        // super .makeNoise()
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 2
print(car.description)

// 重写观察器
final class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

// final 防止重写 error: AutomaticCar 不能被继承
// class AutomaticCar2: AutomaticCar {
//
// }






