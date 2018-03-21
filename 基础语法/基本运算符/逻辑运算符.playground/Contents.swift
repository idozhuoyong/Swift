//: Playground - noun: a place where people can play

import UIKit

/**
 逻辑运算符
 逻辑非 !a         对一个布尔值取反，使得 true 变 false ，false 变 true
 逻辑与 a && b     a 和 b 都为 true 时，表达式的值为 true，否则表达式的值为 false，别称：短路与
 逻辑或 a || b     a 和 b 都为 false 时，表达式的值为 false，否则表达式的值为 true，别称：短路或
 */

// 逻辑非
let allowedEntry = false;
!allowedEntry

// 逻辑与
true && true
true && false
false && true
false && false

// 逻辑或
true || true
true || false
false || true
false || false
