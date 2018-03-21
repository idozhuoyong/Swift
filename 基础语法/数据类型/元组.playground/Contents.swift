//: Playground - noun: a place where people can play

import UIKit

/**
 元组（tuples）把多个值组合成一个值，元组内的值可以是任意类型。
 */
let http404Error = (404, "Not Found")
type(of: http404Error) // (Int, String).Type

// 通过元组元素下标访问元组元素值
http404Error.0
http404Error.1

// 给元祖元素命名
let http200Status = (statusCode: 200, description: "成功")
// 通过元组元素名访问元组元素值
http200Status.statusCode
http200Status.description

// 元组内容分解
let (statusCode, statusMessage) = http404Error
statusCode
statusMessage

// 分解部分元组值
let (httpCode, _) = http404Error
httpCode



