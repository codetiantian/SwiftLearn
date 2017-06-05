//: Playground - noun: a place where people can play

import UIKit

//  字典定义
var dict = [String : Any]()

//  添加元素
dict["name"] = "cui"
dict["age"] = 18
dict["height"] = 188
dict

//  删除元素
dict.removeValue(forKey: "height")
dict

//  修改元素
dict["name"] = "tiantian"
dict

//  遍历所有的key
for key in dict.keys {
    print("\(key)")
}

//  遍历所有的值
for value in dict.values {
    print("\(value)")
}

//  遍历所有的键值对
for (key, value) in dict {
    print((key, value))
}

//  字典合并
var dict1 : [String : Any] = ["name" : "cui", "age" : 18]
let dict2 : [String : Any] = ["height" : 188, "phoneNum" : "123456"]

for (key, value) in dict2 {
    dict1[key] = value
}
dict1


//  元组
//  写法1
let infoTuple = ("why", 18, 1.88)
let infoName = infoTuple.0
print(infoName.characters.count)

//  写法2
let infoTuple1 = (name:"why", age:18, height:1.88)
infoTuple1.name

//  写法3
let (name, age, height) = ("why", 18, 1.88)
name


//  可选类型
//  在开发当中，只有可选类型才可以赋值为nil
var str : String?
str = "why"

print(str ?? "")
//  从可选类型中取值：可选类型 + ！ ---->强制解包
print(str!)

//  强制解包非常危险，如果可选类型为nil，那么强制解包就会崩溃
if str != nil {
    print(str!)
}

//  可选绑定<固定格式>:该语法用于可选类型，使我们使用起来更加方便
//  1> 判断str是否有值，如果有值，则直接执行{}
//  2> 如果str有值，那么系统会自动对可选类型进行解包，并且将解包后的结果赋值给前面的temStr
if let temStr = str {
    print(temStr)
}

//  类型转化 <as>
let strIT = "www.yiliantong.com"
(strIT as NSString).substring(to: 3)

//  1> as? as!
let dicInfo : [String : Any] = ["name":"why", "age":18, "height":1.88]
let tempName = dicInfo["name"]

//  通过as?转成具体类型
//  as？ 转成的类型是一个可选类型，系统会自动判断tempName是否可以转成String，如果可以转成，那么返回字符串，如果转化不成功，则会返回nil
let name1 = tempName as? String
if let name1 = name1 {      //  可选绑定
    print(name)
}


//  2> as! 的用法
//  通过as! 转成具体类型
let tempName1 = dicInfo["name"]
let name2 = tempName1 as! String



//  函数
fileprivate func about() {
    
}


func about1(a : Int, b : Int) -> Int {
    return a + b
}

print("计算的结果为：\(about1(a: 1, b: 2))")
