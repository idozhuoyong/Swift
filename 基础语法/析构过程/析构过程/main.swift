//
//  main.swift
//  析构过程
//
//  Created by 卓勇 on 2018/3/29.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 析构过程 类似于 dealloc方法
 析构器只适用于类类型，当一个类的实例被释放之前，析构器会被立即调用。析构器用关键字 deinit 来标示
 */
class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numerOfCoinsRequested: Int) -> Int {
        return numerOfCoinsRequested
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.coinsInBank = 10_000
    }
}

