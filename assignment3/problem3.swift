//Design and implement a function with one parameter which is an integer and finds the
//next prime number which is bigger than the given input parameter and returns it. Reuse
//(call) the function you have defined for Problem 2.


func isPrime(number: Int) -> (Bool){
    
    var result = true
    
    for i in 2..<number{
        if number % i == 0 {
            result = false
        
        }
    }
     return result
}

func nextPrime(number: Int) -> (Int){
   
    var nextPrime = number + 1
    
    while !isPrime(number: nextPrime){
        nextPrime += 1
        
    }
    return nextPrime
}

func main(){
    
print("Enter a number to check if it is prime or not: ")
    
var number = Int(readLine()!)!
    
print(nextPrime(number: number))
      
      }

main()
