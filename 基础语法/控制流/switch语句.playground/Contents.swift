//: Playground - noun: a place where people can play

import UIKit

var str = "a";

//// 普通匹配
//switch str {
//case "a":
//    print("a");
//case "b":
//    print("b");
//default:
//    print("default");
//}


//// 复合匹配
//switch str {
//case "a", "b": // 当 str 为 (a || b) 时执行此分支
//    print("ab");
//case "c":
//    print("c");
//default:
//    print("default");
//}

// 区间匹配
//var num = 2;
//switch num {
//case 0:
//    print("0");
//case 1...5:
//    print("1...5");
//case 6:
//    print("6");
//case 7...10:
//    print("7...10")
//default:
//    print("default");
//}

//var score = 60.1;
//switch score {
//case 90...100:
//    print("90...100");
//case 80..<90:
//    print("80..<90");
//case 70..<80:
//    print("70..<80");
//case 60..<70:
//    print("60..<70");
//case 0..<60:
//    print("0..<60");
//default:
//    print("失败");
//}


//var point = (0, 1);
//switch point {
//case (0, 0):
//    print("原点");
//case (_, 0):
//    print("x轴上");
//case (0, _):
//    print("y轴上");
//case (-2...2, -2...2):
//    print("盒子内");
//default:
//    print("盒子外");
//}


var point = (1, 1);
switch point {
case let (x, y) where x == y:
    print("x == y");
case (_, 0):
    print("x轴上");
case (0, _):
    print("y轴上");
case (-2...2, -2...2):
    print("盒子内");
default:
    print("盒子外");
}
