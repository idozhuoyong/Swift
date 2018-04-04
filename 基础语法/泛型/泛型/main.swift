//
//  main.swift
//  泛型
//
//  Created by 卓勇 on 2018/4/3.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

// 泛型函数
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
var a = 10
var b = 20
swapTwoValues(&a, &b)
print("a = \(a), b = \(b)")


// 类型约束
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


// 关联类型
protocol Container {
    // 协议中的泛型模式
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack<Element>: Container {
    var items = [Element]()
    mutating func push(item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    // 协议实现部分
    mutating func append(item: Element) {
        self.push(item: item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}

//extension Array: Container {
//    mutating func append(item: Element) {
//        self.append(item)
//    }
//    public var count: Int {
//        return self.count
//    }
//}

func allItemsMatch<C1: Container, C2: Container>(_ someContainer: C1, _ anotherContainer: C2) -> Bool where C1.ItemType == C2.ItemType, C1.ItemType: Equatable {
    
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    return true
}

