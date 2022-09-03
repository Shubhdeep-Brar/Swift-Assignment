//Write a Swift function which receives 2 lists as its input parameters and checks whether one of the list is included in another input list. A list A is considered to be included in List B, if all elements in A are elements in B.

var ListA = [1,2,3,4,5,6,13]
var ListB = [1,2,3,4,5,6,7,8,9,10,11]

var count = 0

for item in ListA{
    if ListB.contains(item){
        count = count + 1
    }
}

if count == (ListA.count){
    print("List B contains List A")
}

else {print("List B does not contain List A")
}
