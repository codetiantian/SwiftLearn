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


//  定义类的属性
class Student {
    //  存储属性：用于存储实例的常量&变量
    var name : String = ""
    var age : Int = 0
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    
    //  计算属性：通过某种方式计算得来结果的属性，就是计算属性
    var averageScore : Double {
        return (mathScore + chineseScore) * 0.5
    }
    
    //  类属性 <通过static修饰>
    static var courseCount : Int = 0
}

//  创建类的对象
let stu = Student()

stu.name = "cui"
stu.age = 18
stu.mathScore = 80
stu.chineseScore = 90

//  获取某一学生的平均成绩
let averageScore = stu.averageScore
print(averageScore)

//  访问类属性
Student.courseCount = 2


//  定义一个可变的字符串为可选类型
var strName : String?

strName = "cui"

print(strName!)
print(strName ?? "")

//  可选绑定
if let name = strName {
    print(name)
}


