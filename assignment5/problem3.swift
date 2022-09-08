//Problem3
//- Define an enum called Calculator with 4 cases:
//o Sum, Subtraction, Multiplication and Division
//o The cases have an associated value which is of type (Int, Int)-> Int
//o Create a static method called calculate for the enum Calculator which takes three
//input parameters:
//§ num1: An integer
//§ num2: An integer
//§ opt: A Calculator enum
//o This function uses a switch statement based on the opt and each case return the
//result of calling the function which is the associated value of the case. For
//instance if the opt is Sum, the function will calculate the sum of the two input
//integers (num1 and num2)
//o Test: Write some test cases to test the enum and calling the calculate method.


enum Calculator {
    case sum (Int,Int), subtraction (Int, Int), multiplication (Int, Int), division (Int, Int)
    
    
    static func calculate(opt: Calculator) -> Int {
        
        switch opt {
            
        case let .sum(num1, num2):
            return num1 + num2
        
        case let.subtraction(num1, num2):
            return num1 - num2
        
        case let .multiplication(num1, num2):
            return num1 * num2
        
        case let .division(num1, num2):
            if num2 == 0 {
                return -1
            }
            
            return num1 / num2
        
        default:
            print("invalid operator")
        
            
        }
        
    }
}

func main(){
    
    let sum = Calculator = .sum(2, 4)
    let subtraction = Calculator = .subtraction(6, 2)
    let multiplication = Calculator = .multiplication(9, 3)
    let division = Calculator = .division(14, 7)
    
    print(Calculator.calculate(opt: sum)
    print(Calculator.calculate(opt: subtraction)
    print(Calculator.calculate(opt: multiplication)
    print(Calculator.calculate(opt: division)
    
}

main()
