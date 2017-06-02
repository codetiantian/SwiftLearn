//
//  ViewController.swift
//  10-Swift初体验
//
//  Created by 这个夏天有点冷 on 2017/6/2.
//  Copyright © 2017年 YLT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var httpTool : HttpTool?
    
    //  在Swift中只要是对父类方法进行重写，必须在方法前加上override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        httpTool = HttpTool()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //  在闭包中self.不能省略
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //  解决方案一：
        /*
        weak var weakSelf = self
        httpTool?.loadData({ (jsonData : String) in
            print("获取到的值为：\(jsonData)")
            weakSelf?.view.backgroundColor = UIColor.red
       })
        */
        
        //  解决方案二： <优先推荐>
        httpTool?.loadData({[weak self] (jsonData : String) in
            print("获取到的值为：\(jsonData)")
            self?.view.backgroundColor = UIColor.red
        })
        
        //  解决方法三
        /*
        httpTool?.loadData({[unowned self] (jsonData : String) in
            print("获取到的值为：\(jsonData)")
            self.view.backgroundColor = UIColor.red
        })
        */
    }
    
    deinit {
        print("当前控制器deinit")
    }
    
}

