//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum ServerRespone{
    case Result(String, String)
    case Failure(String)
}

let success = ServerRespone.Result("6:00", "9:00")
let failure = ServerRespone.Failure("errorffff")

protocol ExamleProtocol{
    var simpleDes: String {get}
    mutating func adjust()
}

class SimpleClass:ExamleProtocol {
    var simpleDes: String = "A very simple"
    var anotherPro: Int = 6666
    func adjust() {
        simpleDes += " 100%Profect"
    }
}

enum SimpleEnum:ExamleProtocol{
    case One(String), Two(String), Three(String)
    
    var simpleDes: String{
        get{
            switch self {
            case .One("One"):
                return "One"
            case .Two("Two"):
                return "Two"
                
            default:
                return "Other"
            }
        }
        
        set{
            self = .One(newValue)
        }
        
    }
    
    mutating func adjust() {
        self = .One("daf" + "afer")
}

}


extension Double: ExamleProtocol{
    var simpleDes: String{
        return "asdrer"
    }
    
    mutating func adjust() {
        self += 33
    }
}

print(32.simpleDes)
var ss: Double = 10
ss.adjust()



var eee = SimpleEnum.One("Thow")
var eDes = eee.simpleDes
eee.simpleDes = "fasd"
eDes = eee.simpleDes
eee.adjust()
eDes = eee.simpleDes

var aa = SimpleClass()
aa.adjust()
let  ad = aa.simpleDes

///异常代码处理
enum PrintError:Error{
    case OutOfPaper
    case NoTotak
    case OnFire
}

func send(job: Int, toPrinter printName:String) throws ->String{
    if printName == "Never" {
        throw PrintError.NoTotak
    }
    return "Job sent"
}

do {
    let printRespinse =  try send(job: 1040, toPrinter: "Never")
    print(printRespinse)
} catch  {
    print(error)
}

///defer 使用
var fridIsOpen = false
let fridContent = ["milk", "eggs", "leftovers"]

func frigefunc(_ food: String) ->Bool{

    defer {
        fridIsOpen = false
    }
    fridIsOpen = true
    
    
    let result = fridContent.contains(food)
    return result
}

frigefunc("banana")
print(fridIsOpen)


///泛型
func repeatItem<Item>(repeating item: Item, number: Int)->[Item]
{
    var result = [Item]()
//    result.append(item)
    for _ in 0..<number{
        result.append(item)
    }
    
    return result
    
}

repeatItem(repeating: "knock", number: 4)

//实现标准库中的可选类型
func anyCommonElemnts<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U)-> Bool where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element{
    
    for lhsItem in lhs{
        for rhsItem in rhs{
            if lhsItem == rhsItem{
                return true
            }
        }
    }
    
    return false
}

anyCommonElemnts([1, 2, 3], [4])
