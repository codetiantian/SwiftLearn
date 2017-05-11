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


//  枚举的定义方法二
enum Type {
    case get, post, put, delete
}


//  ---------------结构体---------------
//  1>定义结构体
struct Location {
    //  属性
    var x : Double
    var y : Double
    var z : Double
    
    //  方法
    func test() {
        print("结构体中的test函数")
    }
    
    //  改变成员属性 : 如果在函数中修改了成员属性，那么该函数前必须加上mutating
    mutating func moveH(distance : Double) {
        self.x += distance
    }
    
    //  给结构体扩充构造函数
    //  1>默认情况下，系统会为每一个结构体提供一个默认的构造函数，要求给每一个成员属性进行赋值
    //  2>构造函数都是以init开头，并且构造函数不需要返回值
    //  3>在构造函数结束时，必须保证所有的成员属性有被初始化
    init(x : Double, y : Double, z : Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    init(xyzStr : String) {
        let array = xyzStr.components(separatedBy: ",")
        
        let item1 = array[0]
        let item2 = array[1]
        let item3 = array[2]
        
        //  1>方法1
//        if let x = Double(item1) {
//            self.x = x
//        } else {
//            self.x = 0.0
//        }
//        
//        if let y = Double(item2) {
//            self.y = y
//        } else {
//            self.y = 0.0
//        }
//        
//        if let z = Double(item3) {
//            self.z = z
//        } else {
//            self.z = 0.0
//        }
        
        //  2>方法2   空合运算符
        self.x = Double(item1) ?? 0
        self.y = Double(item2) ?? 0
        self.z = Double(item3) ?? 0
    }
}

//  2>创建结构体对应的值
var center = Location.init(x: 20, y: 30, z: 40)

//  3>结构体扩充方法
center.test()
center.moveH(distance: 20)
print(center)

//  4>给结构体扩充构造函数
let customStr = Location.init(xyzStr: "12,13,14")
print(customStr)


