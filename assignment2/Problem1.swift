//Implement a function which receives a list and returns True if the list is already sorted ascendingly and returns 0 if the list is not sorted ascendingly.

print("please input a number: ")
//var number:Int = Int(readLine()!)!


var List : Array<Int> = Array()
var input: String? = nil
repeat {
    input = readLine()
    if let unwrapedInput = input {
        if var inputInt = Int(unwrapedInput) {
        // inputInt -> Int
       
            List.append(inputInt)
       
            print("please input a number: ")
      

        } else {
            print("this isn't an integer")
        }
    }
    
}
while input != "exit"

let sortedNumbers = List.sorted()
print(sortedNumbers)
if sortedNumbers == List{
    print("true")
}
else
{
    print("false")
}
