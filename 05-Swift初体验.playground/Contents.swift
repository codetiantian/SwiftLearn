//: Playground - noun: a place where people can play

import UIKit

//  -----------类-----------
//  1>类的定义
class Person {
    //  如果属性为值类型，则初始化为空值
    //  如果属性为对象类型，则初始化为nil值
    var name : String = ""
    var age : Int = 0
}

//  2>创建类的对象
let p = Person()
p.name = "cui"
p.age = 18
