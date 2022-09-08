
class Search {
    var numberList: [Int]
    
    init() {
        self.numberList = []
    }
    
    func reset() -> Void {
        
        self.numberList = []
        
    }
    
    func  randmomFill() -> Void {
        for _ in 0..<10{
            self.numberList.append(Int.random(in: 0..<100))
        }
    }
        
        func linearSearch(intList: [Int], number: Int) -> Bool {
            
            for item in intList {
                if item == number{
                    return true
                }
                
            
            }
            return false
            
        }
}

func main() {
    
    let search = Search()
    search.randmomFill()
    print(search.numberList)
    print(search.linearSearch(intList: search.numberList, number: 5))
    
}

main()

