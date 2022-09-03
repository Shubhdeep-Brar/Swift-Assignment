//Write a function which receives a list and returns a number. In the list, all numbers have been repeated twice except one number that is repeated once. The function should return the number that is repeated once and return it

var List = [1,2,2,1,3,4,5,4,5]

var dict:[Int:Int] = [:]

for item in List{
    if dict[item] == nil {
        dict[item] = 1
    }
    else{dict[item] = nil
        }
    
            
   
    }

//let keysArray: [Int] = [Int](dict.keys)
//let keyArray: Array<Int> = Array()
//print(keysArray[0])

print([Int](dict.keys)[0])


