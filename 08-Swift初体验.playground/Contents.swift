//: Playground - noun: a place where people can play

import UIKit

// MARK: 可选链

class Person {
    var name : String = ""
    var dog : Dog?
}

class Dog {
    var weight : Double = 0
    var toy : Toy?
    
}

class Toy {
    var price : Double = 0
    
    func running() {
        print("toy is running")
    }
}

//  创建类的对象
let p = Person()
p.name = "cui"

let d = Dog()
d.weight = 60.0

let t = Toy()
t.price = 100

p.dog = d
d.toy = t

//  可选链的使用
//  取出cui的狗的玩具的价格

//  ?.就是可选链，系统会自动判断该类型是否有值，如果有值则解包，如果没有值，则赋值为nil
print(p.dog?.toy?.price ?? "")

//  给cui的狗的玩具一个新的价格
p.dog?.toy?.price = 120
print(p.dog?.toy?.price ?? "")
		
//  可选链调用函数
p.dog?.toy?.running()