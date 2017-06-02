//
//  HttpTool.swift
//  10-Swift初体验
//
//  Created by 这个夏天有点冷 on 2017/6/2.
//  Copyright © 2017年 YLT. All rights reserved.
//

import UIKit

class HttpTool {
    
    var finishedCallback : ((_ jsonData : String) ->())?
    
    func loadData(_ finishedCallback : @escaping (_ jsonData : String)->()) {
        
        self.finishedCallback = finishedCallback
        
        //  1.发送异步请求
        DispatchQueue.global().async {
            print("发送异步网络请求\(Thread.current)")
            
            DispatchQueue.main.sync {
                print("回到主线程\(Thread.current)")
                
                finishedCallback("haha")
            }
        }
    }
}
