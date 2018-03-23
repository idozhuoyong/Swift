//
//  main.swift
//  下标
//
//  Created by 卓勇 on 2018/3/23.
//  Copyright © 2018年 北京科蓝软件系统股份有限公司. All rights reserved.
//

import Foundation

/**
 下标语法
 下标允许你通过在实例名称后面的方括号中传入一个或多个索引值来对实例进行存储
 */

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

struct Matrix {
    let rows: Int, columns: Int
    var gird: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        gird = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row: row, column: column), "index out of rage")
            return gird[(row * columns) + column]
        }
        set {
            assert(indexIsValidForRow(row: row, column: column), "index out of rage")
            gird[(row * columns) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
print("matrix[0, 1] = \(matrix[0, 1])")
matrix[1, 0] = 3.2
print("matrix[1, 0] = \(matrix[1, 0])")
//matrix[2, 2] = 2 // 会触发断言
//print("matrix[2, 2] = \(matrix[2, 2])") // 会触发断言


