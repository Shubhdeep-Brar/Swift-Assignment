//Problem 1:
//Consider the following protocol:
//Protocol SomeProtocol1
//{
//  var property1: Int {get}
//  var property2: String {get set}
//  var property3: (()->Int)? {get}
//  sta?c var property4: String? {get set}
//  sta?c method1(arg param: Int)
//  method2(arg param: Int) -> Int?
//  muta?ng method3()-> String?
//}
//Now
//Create a class called Class1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.
//Create a struct called Struct1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.
//Create an enum called Enum1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.


protocol SomeProtocol1 {
    
    var property1: Int {get}
    var property2: String {get set}
    var property3: (() -> Int)? {get}
    static var property4: String? {get set}
    static func method1(arg param: Int)
    func method2(arg param: Int) -> Int?
    mutating func method3 () -> String ?
    
    
}

class Class1: SomeProtocol1 {
    
    var property1: Int
    
    var property2: String
    
    var property3: (() -> Int)?
    
    static var property4: String?
    
    static func method1(arg param: Int)
    {
        print("Result of method1: \(param)")
    }
    
    func method2(arg param: Int) -> Int? {
        if param > 9
        {
            return param
        }
        return nil
    }
    
    func method3 () -> String ? {
        self.property2 = "using property2"
        return self.property2
    }
    
    init(property1: Int, property2: String, property3: (() -> Int)?)
        {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
        }
    
}

struct Struct1: SomeProtocol1 {
    
    
    var property1: Int
    
    var property2: String
    
    var property3: (() -> Int)?
    
    static var property4: String?
    
    static func method1(arg param: Int)
    {
        print("Result of method1: \(param)")
    }
    
    func method2(arg param: Int) -> Int? {
        if param > 9
        {
            return param
        }
        return nil
    }
    
    func method3 () -> String ? {
        self.property2 = "using property2"
        return self.property2
    }
}

enum Enum1 : SomeProtocol1 {
    
    var property1: Int
    
    var property2: String
    
    var property3: (() -> Int)?
    
    static var property4: String?
    
    static func method1(arg param: Int)
    {
        print("Result of method1: \(param)")
    }
    
    func method2(arg param: Int) -> Int? {
        if param > 9
        {
            return param
        }
        return nil
    }
    
    func method3 () -> String ? {
        self.property2 = "using property2"
        return self.property2
    }
    
}

func main()

let closure1 = {() -> Int in }

let property4 = readLine()
print(property4)
if let unwrappedProperty4 = property4 {
    print("property 4 is a String which contains: \(unwrappedProperty4)")
}
else {print("property4 has unsupported or is missing value")}




Class1.property4 =

let instance1Class1 = Class1(property1: 23, property2: "John", property3: <#T##(() -> Int)?#>)
