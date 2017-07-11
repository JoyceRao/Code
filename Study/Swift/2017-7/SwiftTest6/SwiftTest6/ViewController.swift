//
//  ViewController.swift
//  SwiftTest6
//
//  Created by mac on 17/7/11.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self .fff()
        
    }
    
    func fff() -> Void {
        
        var aaArray = [1, 2 ,4]
        aaArray = []
        print("aaArray\(aaArray)")
        
        var ss:String? = "Hello"
        print(ss == nil)
        
        var aa: String? = nil
        var bb = "Hello!"
        
        
        if var name = aa {
            bb = "Hello, \(name)"
        }else {
            bb = "NO ?"
        }
        
        print(bb)
        
        let aaa: String? = nil
        let bbb: String = "Joyce Yeh"
        let ccc = "Hi! \(aaa ?? bbb)"
        
        print("cc\(ccc)")
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("1")
        case "cucumber", "watercress":
            print("2")
        case let x where x.hasPrefix("red pepper"):
            print("3\(x)")
        default:
            print("No")
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

