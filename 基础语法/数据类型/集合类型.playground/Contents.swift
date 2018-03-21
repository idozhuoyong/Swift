//: Playground - noun: a place where people can play

import UIKit

/**
 集合(Set) 用来存储相同类型并且没有确定顺序的值；元素无序，不能重复。
 */
//
//var set1 = Set<Int>();
//var set2 = Set<Int>([1, 2, 3]);
//var set3: Set<String> = ["1", "2", "3", "1"];

//set1.isEmpty
//set1.insert(0);
//set1
//
//set1.insert(0);
//set1
//
//set2.count
//
//set3.remove("1");
//set3;
//
//
//set3.contains("2")
//
//
//for value in set3 {
//    print(value);
//}
//
//for value in set3.sorted() {
//    print(value);
//}

//for value in set3.sorted(by: { (str1, str2) -> Bool in
//    return str1 < str2;
//}) {
//    print(value);
//}

// 集合操作
var set1: Set = [1, 2, 3];
var set2: Set = [3, 4, 5];

// 并集
set1.union(set2);

// 交集
set1.intersection(set2);

// 差集
set1.symmetricDifference(set2)

// 补集，由属于 set1 ，而不属于 set2 的元素组成的集合
set1.subtracting(set2)


//
var A: Set = [1, 2, 3];
var B: Set = [1, 2, 3, 4, 5];

// 集合 A 是否和集合 B 相等
A == B

// 集合 A 是否是集合 B 的子集
A.isSubset(of: B)
A.isStrictSubset(of: B) // B 包含 A 且 A 不等于 B

// 集合 B 是否包含集合 A
B.isSuperset(of: A)
B.isStrictSuperset(of: A) // B 包含 A 且 A 不等于 B

// A 和 B 是否没有交集
A.isDisjoint(with: B)



