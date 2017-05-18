//: Playground - noun: a place where people can play

import UIKit

//------------类属性的监听------------
class Person {
    var name : String = "" {
        //  监听属性即将发生改变，还没有改变
        willSet{
//            print(newValue)
            print(name)
        }
        //  监听属性已经发生改变，已经改变
        didSet{
//            print(oldValue)
            print(name)
        }
    }
    
}

let p = Person()
p.name = "CBB"
//p.name = "YTT"


//  ---------类的构造函数---------
class Student {
    var name : String = ""
    var age : Int = 0
    
    //  在Swift开发中，如果在对象函数中，用到成员属性，那么self.可以省略
    //  注意：如果在函数中，有和成员属性重名的局部变量，那么self.不能省略
    
    //  注意：如果有自定义构造函数，那么会将系统提供的构造函数覆盖掉
    init(name : String, age : Int) {
        self.name = name;
        self.age = age;
    }
    
    init(dict : [String : Any]) {
        if let name = dict["name"] as? String {
            self.name = name
        }
        
        if let age = dict["age"] as? Int {
            self.age = age
        }
    }
}

let stu = Student.init(name: "cui", age: 18)

let stu1 = Student.init(dict: ["name" : "yan", "age" : 18])
print(stu1.name, stu1.age)



//  --------KVC-------

//  使用KVC的条件
/*
    1>必须继承自NSObject
    2>必须在构造函数中，先调用super.init()
    3>调用setValuesForKeys方法
    4>如果字典中某一个key没有对应的属性，则需要重写 setValue forUndefinedKey方法
 */

class Person1 : NSObject {
    var name : String = ""
    var age : Int = 0
    var height : Double = 0
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

let p1 = Person1.init(dict: ["name" : "why", "age" : 18, "height" : 1.88])
print(p1.name, p1.age)








