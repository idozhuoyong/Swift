//: Playground - noun: a place where people can play

import UIKit

/**
 浮点数：有小数部分的数字
    Double：双精度浮点数，表示64位浮点数，开发中常用此类型
    Float：单精度浮点数，表示32位浮点数
 */

// 通过字面量赋值进行类型推断
// 整数 Int/UInt, Int8/UInt8 等类型，编译器默认推断 intValue 为 Int 类型
let intValue = 32;
type(of: intValue)

// 浮点数 Double，Float 类型，编译器默认推断 doubleValue 为 Double 类型
let doubleValue = 12.3;
type(of: doubleValue)


0xC.3p0 // (12 +  3 * (16^-1)) * (2^0) = 12.1875
0xC.3p1 // (12 +  3 * (16^-1)) * (2^1) = 23.375

