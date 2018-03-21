//: Playground - noun: a place where people can play

import UIKit

/**
 字典 (Dictionary<Key, Value>)
 字典是一种存储多个相同类型的值的容器。 键值对形式存储。
 */
var dict1: Dictionary<Int, String>;
var dict2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"];
var dict3: Dictionary<Int, String> = [:];

dict2.isEmpty
dict3.isEmpty

// 取值
dict2["YYZ"]

// 修改值
dict2["LHR"] = "London";
dict2["LHR"] = "London Heathrow";
dict2.updateValue("New Loandon Heathrow", forKey: "LHR");

// 移除
dict2.removeValue(forKey: "LHR")
dict2["LHR"] = nil

dict2

// 字典遍历
for (key, value) in dict2 {
    print("key=\(key), value=\(value)");
}

print("----------");
for key in dict2.keys {
    print("key=\(key)");
}

print("----------");
for value in dict2.values {
    print("value=\(value)");
}
