//
//  main.swift
//  自动引用计数
//
//  Created by 卓勇 on 2018/4/2.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

//class Person {
//    let name: String
//
//    @discardableResult // 忽略返回值
//    init(name: String) {
//        self.name = name
//    }
//    deinit {
//        print("我被调用了 name = \(name)")
//    }
//}
//
//Person(name: "小明")

//// 弱引用
//class Person {
//    let name: String
//    var apartment: Apartment?
//
//    init(name: String) {
//        self.name = name;
//    }
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class Apartment {
//    let unit: String
//    weak var tenant: Person? // 弱引用
//    init(unit: String) {
//        self.unit = unit;
//    }
//    deinit {
//        print("Apartment \(unit) is being deinitialized")
//    }
//}
//
//var john: Person?
//var unit4A: Apartment?
//
//john = Person(name: "John Applessed")
//unit4A = Apartment(unit: "4A")
//
//john!.apartment = unit4A
//unit4A!.tenant = john
//
//john = nil
//unit4A = nil


// 无主引用
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer // 无主引用
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        print("card #\(number) is being deinitialized")
    }
}

var john: Customer?
john = Customer(name: "John")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)

john = nil;


