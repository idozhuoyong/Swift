//
//  main.swift
//  扩展
//
//  Created by 卓勇 on 2018/4/3.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/*
 扩展
 1. 添加计算型属性和计算型类型属性
 2. 定义实例方法和类型方法
 3. 提供新的构造器
 4. 定义下标
 5. 定义和使用新的嵌套类型
 6. 使一个已有类型复符合某个协议
 */
// 扩展计算型属性
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
}
print(3.4.km)

// 扩展构造器
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// 扩展方法
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    // 可变实例方法, Int是一个结构体类型，需要利用可变方法修改属性值
    mutating func square() {
        self = self * self
    }
    
    // 扩展下标方法
    subscript(index: Int) -> Int {
        var decimalBase = 1;
        for _ in 0..<index {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
    
    
    //
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
    
}
3.repetitions {
    print("hello world")
}

var tempInt = 3
tempInt.square()
print(tempInt)
print(4321[1])
