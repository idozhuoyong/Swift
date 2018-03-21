//: Playground - noun: a place where people can play

import UIKit

/**
 区间运算符
 1、 闭区间运算符
    a...b : 定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间。a 的值不能大于 b
 2、 半开区间运算符
    a..<b : 定义一个包含从 a 到 b（包括 a 但不包括 b）的所有值的区间。a 的值不能大于 b
 */

// 闭区间运算符
print("闭区间运算符 (1...3)");
for i in 1...3 {
    print(i);
}

// 半开闭区间运算符
print("半开闭区间运算符 (1..<3)");
for i in 1..<3 {
    print(i);
}
