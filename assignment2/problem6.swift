//Write a function which has no input parameter. The function asks the user to enter
//numbers. The user can enter repeated numbers but if the user entered a number which was already entered, the function will provide an error message to the user and ask the user to enter another one. The user can enter numbers as long as s/he has not entered 0. Once a 0 is entered, the function returns the sum of all distinct numbers the user had entered.


var List:Array<Int> = Array()
var input:String? = nil

var sum = 0

repeat {
    print("Please input a number: ")
    
    input = readLine()
    
    if let unwrappedInt = input {
        if var inputInt = Int(unwrappedInt){
            if List.contains(inputInt){
                print("the number is already present")
            }
            else {List.append(inputInt)
            
                }
        }
        
        else {print("the number is not an integere")}
    }
    
} while input != "0"

for item in List{
  sum = sum + item
}
print("Sum of numbers is: \sum")
