func fakeFunction1(a: Int, b: Int) -> Int {
    return a + b
}

func fakeFunction2(a: String) -> Void {
    print(a)
}

func fakeFunction3()-> Int{
    return 2
}

func fakeFunction4() -> [() -> Void] {
    return [{ print("Print func4") }]
}

func fakeFunction5(a: [(Int) -> Void]) -> [String] {
    return ["func5_1", "func5_2"]
}

func fakeFunction6(a: [(Int) -> (Void)]) -> [(Int) -> Void] {
    return a
}

func fakeFunction7(a: [(Int)-> Void]?) -> [(Int)-> Void]? {
    return a
}

func fakeFunction8(a: [(Int)-> Void]?)->[(Int)-> Void]? {
    return a
}

func fakeFunction9() -> ((Int)) -> Int, Int)? {
    return ({ a in a }, 1)
}

func main() {
    let func1: (Int, Int) -> Int
    func1 = fakeFunction1
    
    let func2: (String) -> Void
    func2 = fakeFunction2
    
    let func3: () -> Int
    func3 = fakeFunction3
    
    let func4: () -> [() -> Void]
    func4 = fakeFunction4
    
    var func5: ([(Int)-> Void])->[String]
    func5 = fakeFunction5

    var func6: ([(Int)-> Void])->[(Int)-> Void]
    func6 = fakeFunction6

    var func7: ([(Int)-> Void]?)->[(Int)-> Void]?
    func7 = fakeFunction7

    var func8: ([(Int)-> Void]?)->[(Int)-> Void]?
    func8 = fakeFunction8

    var func9: ()->((Int)->Int,Int)?
    func9 = fakeFunction9
    
    print(func1(3,5))
    func2("func2 result")
    print(func3)
    print(func4)
    print(func5([{a in print(a) }]))
    print(func6([{a in print(a) }]))
    
    guard let func7ReturnValue = func7([{ a in print(a) }]) else
    {
        return
        
    }
    print(func7ReturnValue)
    
    guard let func8ReturnValue = func8([{ a in print(a) }]) else{
        return
    }
    
    print(func8ReturnValue)
    
    guard let func9ReturnValue = func9() else {
        return
}
    print(func9Return)
    
}
main()
