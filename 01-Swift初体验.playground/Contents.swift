//: Playground - noun: a place where people can play

import UIKit

//  定义枚举
enum myType {
    case A
    case B
    case C
}

//  MARK: - 开发中优先使用常量，只有发现标识符需要修改时才使用变量
// 定义变量
var a : Int = 8
a = 20

//  定义常量
let b : Double = 3.14

//  打印输出
print("这是我打印的内容")

var myView : UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
myView.backgroundColor = UIColor.red

var btn : UIButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 60, height: 30))
btn.center = myView.center
btn.backgroundColor = UIColor.blue
btn.setTitle("按钮", for: .normal)
myView.addSubview(btn)

//  类型推导
let c = 20
let d = 10.5




