//: Playground - noun: a place where people can play

import UIKit

/**
 三目运算符：
    书写形式： 问题 ? 答案1 : 答案2
    描述： 如果问题成立(true) 返回答案1的值，否则返回答案2的值
 */

// 案例：如果有表头，那行高应比内容高度要高出 50 点;如果没有表头，只需高出 20 点
let contentHeight = 40;
let hasHeader = true;
let rowHeight = hasHeader ? contentHeight + 50 : contentHeight + 20;




