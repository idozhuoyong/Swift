//
//  main.swift
//  方法
//
//  Created by 卓勇 on 2018/3/23.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/*
 方法: 与某些特定类型相关联的函数。
 */

// 实例方法

class Counter {
    var count = 0
    func increment() {
        count += 1 // <==> self.count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()
counter.increment()
print(counter.count) // 1
counter.increment(by: 5)
print(counter.count) // 6
counter.reset()
print(counter.count) // 0

struct Point {
    var x = 0.0, y = 0.0
    // 默认情况下，值类型属性不能在他的实例方法中被修改，如需修改，需要加 mutating 关键字
    mutating func moveByXY(deltaX: Double, deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point()
somePoint.moveByXY(deltaX: 10, deltaY: 10)
print("x = \(somePoint.x), y = \(somePoint.y)")
//let somePoint2 = Point(x: 11, y: 11)

// 枚举的可变方法
enum TriStateSwitch {
    case Off, Low, Hight
    mutating func next() {
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .Hight
        case .Hight:
            self = .Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight.next()
print(ovenLight)

// 类型方法
struct LevelTrackter {
    static var highestUnlockedLevel = 1
    var currentLebel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    // 可变实例方法
    @discardableResult // 允许忽略返回值
    mutating func adVance(to level: Int) -> Bool {
        if LevelTrackter.isUnlocked(level) {
            currentLebel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var trackter = LevelTrackter()
    let playerName: String
    func complete(level: Int) {
        LevelTrackter.unlock(level + 1)
        trackter.adVance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTrackter.highestUnlockedLevel)")

var player1 = Player(name: "Beto")
if player.trackter.adVance(to: 6) {
    print("player is now on level 6")
} else {
    print("highest unlocked level is now \(LevelTrackter.highestUnlockedLevel)") // highest unlocked level is now 2
    print("level 6 has not yet been unlocked")
}

// 类型属性有点类似静态常量



