
func filter(list: [Int], predicates: [(Int) -> Bool]) -> [Int]? {
    var result: [Int] = []
    
    for number in list {
        var isAllTrue = true
    
    
    for predicate in predicates {
        if !predicate(number) {
            isAllTrue = false
        }

    }
    if isAllTrue {
        result.append(number)
    }
    
}
    return result
}
    func isPrime(number: Int) -> Bool {
        if number < 2 {
            return false
        }
        
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }

func main() {
    
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        
    let Predicate1: (Int) -> Bool = { num in num % 2 != 0 }
    let Predicate2: (Int) -> Bool = isPrime
    let Predicate3: (Int) -> Bool = { num in num  % 2 != 0 && isPrime(number: num) }
    let Predicate4: (Int) -> Bool = { num in num % 7 == 0 }


    let predicates = [Predicate1, Predicate2, Predicate3, Predicate4]
    

    guard let result = filter (list: list, predicates: predicates) else {
        return
    }
    
    print(result)
}

main()
