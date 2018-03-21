//: Playground - noun: a place where people can play

import UIKit

/**
 continue
 break
 fallthrough
 return
 throw
 */

// continue, 结束当次循环，开始下次循环
for index in 1...3 {
    if index == 2 {
        continue;
    }
    print(index);
}
print("----------")

// break 结束循环、结束 switch 代码块
for index in 1...3 {
    if index == 2 {
        break;
    }
    print(index);
}
var num = 0;
switch num {
case 0:
    print("switch 0");
    break;
case 1:
    break;
default:
    print("switch default");
    break;
}
print("----------")

// fallthrough 贯穿
var num2 = 1;
switch num2 {
case 0:
    print("0");
case 1:
    print("1");
    fallthrough // 贯穿，相当于告诉编译器不自动添加 break
case 2:
    print("2");
default:
    print("nothing")
}
print("----------")

// 带标签的语句
var sum = 0;
loop: for index in 1...10 {
    if index == 3 {
        continue loop; // 结束本次循环，执行下次循环
    }
    sum += 1;
    if sum == 4 {
        break loop; // 终止指定循环体
    }
    print(index);
}
print("----------")

// return 中断函数执行
func greet(person: [String: String]) {
    print(type(of: person["name"])) // Optional<String>
    
    // 可用于规则检测
    guard let name = person["name"] else {
        print("姓名不能为空")
        return; // 这里一定要使用return等语句，以中断后续代码的执行，否则会编译错误
    }
    print("name = \(name)");
}
greet(person: ["name": "Johns"]);
greet(person: [:]);

// throw 跑出异常

// 系统版本判断
if #available(iOS 10.0, macOS 12.0, watchOS 2.0, tvOS 1.0, *) {
    print("API可用");
} else {
    print("API不可用");
}

