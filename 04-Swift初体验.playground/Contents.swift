//: Playground - noun: a place where people can play

import UIKit

//  枚举
//  1>枚举类型的定义
enum MethodType {
    case get
    case post
    case put
    case delete
}

//  2>创建枚举具体的值
let type1 : MethodType = .get
let type2 = MethodType.post


//  3>给枚举类型赋值
enum Direction : Int {
    case east = 0
    case west = 1
    case north = 2
    case sourth = 3
}

let d : Direction = .west
d.hashValue

		