//: Playground - noun: a place where people can play

import UIKit

/**
 数组(Array)
 数组使用有序列表存储同一类型的多个值。相同的值可以多次出现在一个数组的不同位置。
 */

// 创建数组
var someInts1 = [Int]();
var someInts2 = [1, 2, 3, 4, 5];
var someInts3 = Array<Int>();
var someInts4 = Array(repeating: 2, count: 3);
var someInts5 = [1, 2, 3] + [4, 5, 6];
var strArray2: [String] = ["1", "2"];

// 访问和修改数组
//someInts1.isEmpty
//someInts1.append(0);
//someInts1[0] = 1;
//someInts1.count
//someInts2[1...2] = [6, 7]; // 修改元素
//someInts2.insert(0, at: 0); // 插入元素
//someInts2.remove(at: 0); // 移除元素
someInts2.contains(1);
someInts2

// 数组遍历
for value in someInts2 {
    print(value);
}

for (index, value) in someInts2.enumerated() {
    print("index = \(index), value = \(value)")
}

//strArray2.indexOfObject("1"); // error

//var arr: NSMutableArray = [1, 2, 3, "1", "2", "3"];
//type(of: arr);
//arr.remove("2");

//var str: NSString = "123123";
//type(of: str);
//str.range(of: "123");


