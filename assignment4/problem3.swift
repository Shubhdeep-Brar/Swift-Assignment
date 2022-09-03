//The size of the array is between 5-10 (pick an arbitrary number)
//oInitialize the array with some initial values.
//oThe possible values the items of the array can take is following
//▪sum
//▪division
//▪difference
//▪power
//▪multiplication
//oDefine a function for each of the above mathematical operations (sum, division,
//difference, complement, power, multiplication)
//oDefine a dictionary as following
//oThe type of key is String
//oThe type of the value is a function type (Int, Int) -> Double
//oDefine a function called calculator which takes the following as inputs:
//oTwo numbers
//oAn operation (which is either sum, division, difference, power or multiplication)
//oThe calculator function returns a tuple with two parameters: 1- the result of the operation
//and 2- the operation’s corresponding function. For instance, of the operation sent to the
//function is sum, and the two numbers are 10 and 20 the function will return a tuple which
//is (20, the sum function from the dictionary).
//oWrite a for-loop and iterate over the items of the array of the operations and call the
//calculator function for each item of the array.


var List = ["sum", "division", "difference", "multiplication", "power"]

func sum(a: Int, b: Int) -> Double {
    return Double(a + b)
}

func division(a: Int, b: Int) -> Double {
    return Double(a / b)
}

func difference(a: Int, b: Int) -> Double {
    return Double(a - b)
}

func multiplication(a: Int, b: Int) -> Double {
    return Double(a * b)
}

func power(a: Int, b: Int) -> Double {
    var result = 1
    
    for _ in 0..<b {
        result = result * a
    }
    return Double(result)
}

var dict: [String:(Int, Int) -> Double] = [

    "sum" : sum,
    "division" : division,
    "difference" : difference,
    "multiplication" : multiplication,
    "power" : power

]

func calculator (num1: Int, num2: Int, oper: String) -> (Double,(Int,Int) -> Double)? {
    guard let calcFun = dict[oper] else {
        return nil
    }
    
    return (calcFun(num1, num2), calcFun)
    
}

func main() {
    
    for operation in List {
        
        if let result = calculator(num1: 2, num2: 3,oper: operation) {
            print(result)
        }
    }
}

main()



