//: Playground - noun: a place where people can play

import UIKit

// for-in 循环
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)");
}

let base = 2;
let power = 10;
var answer = 1;
for _ in 1...power {
    answer *= base;
}
answer

// error: C-style for statement has been removed in Swift 3
//for (var i = 0; i < 10; i++) {
//
//}

var arr = [5, 4, 3, 2, 1];
for ele in arr.enumerated() {
    print("index=\(ele.offset), value=\(ele.element)");
}

print("---------");
var arr2 = [5, 4, 3, 2, 1];
for (index, value) in arr2.enumerated().reversed() {
    print("index=\(index), value=\(value)");
}



