//Write a function which receives a list and returns True if the list is “Partially sorted” and
//returns False if the list is not “Partially Sorted”. A list is “Partially sorted” if and only if
//there exists an item in the list which if removed, the list will become a sorted list. For instance the following list is “Partially sorted”:
//- [1,2,5,10,6,8,9] This is partially sorted because it is not originally sorted but if we remove 10 from the list, then the list is sorted.

print("Please input a number: ")

var List: Array <Int> = Array()
var input: String? = nil

repeat{
    input = readLine()
    if let unwrappedInput = input {
        if var IntNumber = Int(unwrappedInput) {
        List.append(IntNumber)
        print("please input a number: ")
        }
        
    } else {
        print("this isn't an integer: ")
    }
    
} while input != "exit"

var result = false

for (index,_) in List.enumerated(){
   
    var newList = List
    newList.remove(at: index)

    if newList == newList.sorted() {
        result = true
        break
        
    }
    
       


}

print(result)
