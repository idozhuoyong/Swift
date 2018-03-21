//: Playground - noun: a place where people can play

import UIKit

/**
 比较运算符
 
 等于         ==
 不等于       !=
 大于         >
 小于         <
 大于等于      >=
 小于等于      <=
 
 恒等         ===
 不恒等       !==
 
 */

var a = 1;
var b = 1;
a == b;

a = 2;
b = 1;
a == b;

a = 2;
b = 1;
a != b;

// 注意：元组比较只能用于7个元素以内的元组
(1, "zebra") < (2, "zebra")
(1, "zebra") < (1, "zfbra")
(1, "zebra") < (1, "zebra")
