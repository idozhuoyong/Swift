//
//  main.swift
//  属性
//
//  Created by 卓勇 on 2018/3/22.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/*
 属性：属性将值跟特定的类、结构体或枚举关联。
 */
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangOfThreeItems.firstValue = 6

//let rangOfThreeItems2 = FixedLengthRange(firstValue: 0, length: 3)
//rangOfThreeItems2.firstValue = 6 // error rangOfThreeItems2 是值类型，不可改变


// 延迟属性 lazy，只能作用与类
class DataImporter {
    /*
     DataImporter 是一个负责将外部文件中的数据导入的类
     这个类的初始化会消耗不少时间
     */
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter() // 延迟属性，在第一次访问的时候才会被创建
    var data = [String]() // Array<String>
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.fileName)


// 计算属性
struct Point {
    var x = 0.0
    var y = 0.0
}
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        /*
        // setter 方式一
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
         */
        // 简化写法
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
    // 只读属性
    var area: Double {
        return size.width * size.height
    }
    
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print("centerX = \(initialSquareCenter.x), centerY = \(initialSquareCenter.y)")

square.center = Point(x: 15.0, y: 15.0)
let initialSquareCenter2 = square.center
print("centerX = \(initialSquareCenter2.x), centerY = \(initialSquareCenter2.y)")

// 属性观察器：监控和响应属性值得变化，每次属性被设置值的时候都会调用属性观察器，新值和当前值相同的时候也不例外
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            // wilSet 在新的值被设置之前调用
            print("newTotalSteps: \(newTotalSteps)")
        }
        didSet {
            // didSet 在新的值被设置之后立即调用
            if totalSteps > oldValue {
                print("add totalSteps: \(totalSteps)")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200

// 存储型类型属性、计算型类型属性
struct SomeStructure {
    // 类型的静态属性，通过类型名访问
    static var sotredTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
print(SomeStructure.sotredTypeProperty) // 类似于类方法，通过类名调用

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypPreoperty: Int {
        return 6
    }
}
print(SomeEnumeration.storedTypeProperty)

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    // 可被子类重写
    class var overrideableComputedTypeProprety: Int {
        return 107
    }
}


