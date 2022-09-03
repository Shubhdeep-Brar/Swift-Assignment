//Design and implement a function which receives a number as its input parameter and
//checks whether the number is a prime number or not. If it is a prime number the
//algorithm returns true and if not the algorithm will return false.
//-Prime number: https://simple.wikipedia.org/wiki/Prime_number


func isPrime(number: Int) -> (Bool){
    
    var result = true
    
    for i in 2..<number{
        if number % i == 0 {
            result = false
        
        }
    }
     return result
}


func main(){
    
print("Enter a number to check if it is prime or not: ")
num = readLine()
    if let input = num {
        if let number = Int(input){
            print ("valid input - Integer")
        }
        else {
            print("invalid input")
        }
            
    } else {print("the value is nil")}
    
print(isPrime(number: number))
}

main()
