//: Playground - noun: a place where people can play

import UIKit

//  类的析构函数
class Person {
    var name : String = ""
    var age : Int = 0
    
    var book : Book?
    
    
    //  重写析构函数
    deinit {
        print("Person对象销毁")
    }
}

// 循环引用
class Book {
    var price : Double = 0
    weak var person : Person?
    
    deinit {
        print("Book对象销毁")
    }
}

var p : Person? = Person()
p = nil

var person : Person? = Person()
person!.name = "haha"

var book : Book? = Book()
book!.price = 60

person!.book = book
book!.person = person

person = nil
book = nil
