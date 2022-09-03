//Write a function which lets the user enter English words. The user can keep entering English words as long as the user has not entered the word “exit”. Once the user enters “exit” the function will return and print the list of all distinct words starts with English alphabets. Like: A: Ali, apple, ... B: Bob, book... until Z


var dict: [String:[String]] = [:]

for i in 65 ... 90{
    dict[String(UnicodeScalar(i)!)] = []
}
print("please enter a word: ")
var word = readLine()!

while word != "exit" && word != nil{
    let firstletter : String = word.first!.uppercased()
    if dict[firstletter] != nil && !dict[firstletter]!.contains(word){
        dict[firstletter]!.append(word)
    }
    
    print("please enter a word: ")
    word = readLine()!
    
}
print(dict)
