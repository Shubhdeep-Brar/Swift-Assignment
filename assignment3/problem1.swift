//Design and implement a function which takes 2 operands (numbers) and one operator
//(plus, minus, multiplication and division) and applies the operator on the operands and
//returns and prints the result.
//Note: If operand1 is a non-zero number and the operand2 is zero, then the program
//should not perform the division operand and should print the operation is not possible
//because one number is zero (this is only for division operator) and return -1


func calculator(operand1: Int, operand2: Int, oper: String) -> (Int) {
    
    if oper == "+"{
       return  operand1 + operand2
    }
    else if oper == "-"{
        return operand1 - operand2
    }
    else if oper == "*" {
        return operand1 * operand2
    }
    else if oper == "/" {
        if operand1 == 0 || operand2 == 0 {
            print("The division is not posssible")
            return -1
        }
        else { return  operand1/operand2
        }
}
    else {
        print("invalid operator")
    }
    return -1
}


func main(){
    
    print("Enter value of operand1: ")
    let operand1 = Int(readLine()!)!
    
    print("Enter value of operand2: ")
    let operand2 = Int(readLine()!)!
    
    print("Enter operator (+ - * /):  ")
    let oper = readLine()!
    
    print(calculator(operand1: operand1, operand2: operand2, oper: oper))
}

main()
