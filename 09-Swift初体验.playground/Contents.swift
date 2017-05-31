//: Playground - noun: a place where people can play

import UIKit

// MARK: 协议

protocol SportProtocol {
    func playBasketball()
    func playFootball()
}

class Teacher : SportProtocol {
    
    func playBasketball() {
        print("打篮球")
    }
    
    func playFootball() {
        print("踢足球")
    }
}

class Student : NSObject, SportProtocol {
    func playBasketball() {
        print("打篮球")
    }
    
    func playFootball() {
        print("踢足球")
    }
}

//  协议在代理设计模式中的使用

//  1.定义协议时，协议后面最好跟上 : class
//  2.delegate属性最好用weak，用于防止循环引用

protocol BuyTicketDelegate : class {
    func buyTicket()
}

class Person {
    
    //  定义代理属性
    weak var delegate : BuyTicketDelegate?
    
    func GoToBiejing() {
        delegate?.buyTicket()
    }
}

//  如何让协议中的方法为可选方法
@objc protocol TestProtocal {
    @objc optional func test()
}

class Dog : TestProtocal {
    
}