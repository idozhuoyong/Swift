//: Playground - noun: a place where people can play

import UIKit

///**
// 字符串和字符
// */
//
//// 字面量初始化
//let someString = "Some string literal value";
//
//// 初始化空字符串
//var emptyString1 = "";
//var emptyString2 = String();
//
////
//if emptyString1.isEmpty {
//    print("Nothing to see here");
//}
//
//// 字符串拼接
//emptyString1 += someString; // Some string literal value
//
//for index in emptyString1.indices {
//    type(of: index);
//    // print(emptyString1[index]);
//}
//for character in emptyString1.characters {
//    print(character, terminator: "");
//}
//print("");
//
//// 定义一个字符
//let exclamationMark: Character = "!";
//// 定义一个字符数组
//let catCharacters: [Character] = ["c", "a", "t"];
//
//let catString = String(catCharacters);
//let catString2 = String(exclamationMark);
//
//
//// 字符串插值
//let str1 = "wrold";
//"hello, \(str1)"
//// 长度
//str1.count
//str1.characters.count
//
//var str = "hello";
//// 字符换访问
//// 下标（索引）的概念和 oc 一样，在 Swift 中下标是一种单独的类型
//str[str.startIndex]; // str.startIndex 字符串的第一个下标
//str.index(before: str.endIndex) // str.endIndex 的前一个下标
//str.index(after: str.startIndex) // str.startIndex 的后一个下标
//
// // 利用索引范围遍历数组
//for index in str.indices {
//    if index == str.startIndex {
//        str[index]
//    }
//}


/**
 字符串修改
 */
var str = "hello";

// 1. 利用字符串拼接修改
str += "world";

// 2. 利用 append 方法修改
str.append("!");

// 3. 利用 insert 方法修改
str.insert(contentsOf: ", ", at: str.index(str.startIndex, offsetBy: 5));
print(str)

/**
 字符串删除
 */
// 移除指定位置
//str.remove(at: str.startIndex);
// 移除所有
//str.removeAll();
// 移除指定范围
let range = str.startIndex..<(str.index(str.endIndex, offsetBy: -6));
str.removeSubrange(range)
str

/**
 字符串比较 == 和 !=
 */
var str1 = "hello";
var str2 = "hello";
str1 == str2;
str1 != str2;

/**
 前缀/后缀
 */
var str3 = "hello world";
str3.hasPrefix("hello"); // 前缀
str3.hasSuffix("world"); // 后缀

str3.contains("hello");
str3.contains("1")

//
//var str4 = "dog?";
//for scalar in str4.unicodeScalars {
//    print(scalar);
//}
//



