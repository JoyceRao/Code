//
//  ViewController.swift
//  SwiftTest6
//
//  Created by mac on 17/7/11.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ace = Rank.Jack
        let aceRawValue = ace.rawValue
        print(ace)
        print(aceRawValue)
        
        if let conver = Rank(rawValue : 15){
            let three = conver.simple()
            print(conver)
            print(three)
        }
        
//        var tri = Triangle(size: 10, name: "Triangle:")
//        print(tri.square.sideLength)
//        print(tri.tt.sideLength)
//        tri.square = Square(sideLength: 50, name: "Square:")
//        print(tri.tt.sideLength)
    }
    
    
    enum Rank: Int {
        case Ace = 10
        case Two, Three, Four, Five
        case Jack , Queen, King
        func simple() -> String {
            switch self {
            case .Ace:
                return "ace"
            case .Jack:
                return "jack"
            case .Queen:
                return "queen"
            case .King:
                return "king"
            default:
                return String(self.rawValue)
            }
        }
    }
    
    
    
    class Triangle{
        var tt: EquilT{
            willSet{
                square.sideLength = newValue.sideLength
            }
        }
        
        var square:Square{
            willSet{
                tt.sideLength = newValue.sideLength
            }
        }
        
        init(size: Double, name: String) {
            square = Square(sideLength: size, name: name)
            tt = EquilT(sideLength:size, name: name)
        }
    }
    
    class NameShape {
        var num : Int = 0
        
        var name: String
        
        init (name: String)
        {
            self.name = name
            print(self.name)
        }
        
        func printSimple() -> String {
            return "A shape with \(num) sides."
        }
        
    }
    
    class EquilT: NameShape {
        var sideLength: Double = 0.0
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength;
            super.init(name: name);
            num = 3
        }
        
        var perimeter: Double{
        
            get{
                return 3.0 * sideLength
            }
            
            set{
                sideLength = newValue / 3.0
            }
        }
        
        override func printSimple() -> String {
            return "sideLength = \(sideLength)"
        }
        
    }
    
    class Square: NameShape {
        var sideLength: Double
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            num = 4
        }
        
        func area() -> Double {
            return sideLength * sideLength
        }
    }

    
    class Shape {
        var num = 0
        func printSimple() -> String {
            return "A shape with \(num) sides."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

