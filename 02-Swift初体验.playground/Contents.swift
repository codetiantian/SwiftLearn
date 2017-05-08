//: Playground - noun: a place where people can play

import UIKit

//  字符串
var str : String = "哈哈哈"

//  获取长度
let length = str.characters.count

//  字符串之间的拼接
let str1 = "111"
let str2 = "222"

let str3 = str1 + str2

let name = "崔"
let age = 18
let height = 1.88

let infoStr = "my name is \(name), age is \(age), height is \(height)"

//  字符串拼接过程中的格式化
let min = 3
let second = 4
let timeStr = String.init(format: "%02d:%02d", min, second)

//  字符串截取
let urlString = "www.baidu.com"
//  方式1  将String类型转成NSString类型
(urlString as NSString).substring(to: 3)

//  方法2  直接使用String类型方法
let header = urlString.substring(to: urlString.index(urlString.startIndex, offsetBy: 3))


//  ---------------------------数组-------------------------------
//  数组的定义
//  1>定义不可变数组
let array : [String] = ["111", "222", "333"]

//  2>定义可变数组
var arrayM = ["111", "222", "333"]

//  增
arrayM.append("555")

//  删
arrayM.remove(at: 1)

//  改
arrayM[0] = "666"
arrayM

//  获取数组的长度
let count = arrayM.count

//  遍历数组
for i in 0..<count {
    print(arrayM[i])
}

let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
view.backgroundColor = UIColor.red

let path = UIBezierPath.init(arcCenter: view.center, radius: 25.0, startAngle: 0, endAngle: CGFloat(Double.pi * 2), clockwise: true)

let layer = CAShapeLayer.init()
layer.backgroundColor = UIColor.black.cgColor
layer.path = path.cgPath

view.layer.mask = layer
view




