//: Playground - noun: a place where people can play

import UIKit

if 1 < 2 {
    print("1 < 2");
}

var score = 90;
if score <= 100 && score >= 90 {
    print("优秀")
} else if score >= 80 {
    print("良好")
} else if score >= 60 {
    print("及格")
} else if (score >= 60) {
    print("不及格")
} else {
    print("成绩不合法")
}
