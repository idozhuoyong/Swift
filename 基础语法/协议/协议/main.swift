//
//  main.swift
//  协议
//
//  Created by 卓勇 on 2018/4/3.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

print("Hello, World!")

//protocol Protocol {
//
//}
// @objc 特性的协议智能被继承自 Objective-C 的类 或者 @objc 类遵循
@objc protocol CounterDataSource {
    @objc optional func incrementForCount(count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class ThreeSource: NSObject, CounterDataSource {
    let fixedIncrement: Int = 3
}
