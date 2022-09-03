
//- Write a Swift function which receives 3 lists as its input parameters and combines the lists and remove repeated numbers from the combined list and return the combined list. For instance, if the input is [1,2,3,4,2,3] and [3,4,6,7] and [-1,0,23,4] the result is [1,2,3,4,6,7,-1,0,23]
//- Note, the order the lists are combined together does not matter.

var List1 = [1,2,3,4,2,3]
var List2 = [3,4,6,7]
var List3 = [-1,0,23,4]

var List4 = List1 + List2 + List3

var uniqueCombinedList = Set(List4)

print(uniqueCombinedList)
