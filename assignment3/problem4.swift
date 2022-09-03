//Design and implement a function which receives a number as its first input parameter and a format (which is either SHAPE1 or SHAPE2 or SHAPE3) as the second input parameter and prints the following patterns. See the examples below:
//-Example: number: 5 format: SHAPE1
//*****
// ***
//  *
//-Example: number: 5 format: SHAPE2
//*****
//****
//***
//**
//*
//-Example: number: 5 format: SHAPE3
//*
//**
//***
//****
//*****


func printShape(number: Int, shape: String) {
    
    var spaces = 0
    
    if shape == "Shape1"{
        for i in stride(from: number, to: 0, by: -2) {
            for j in 0...spaces{
                print(" ", terminator: "s")
            }
            for k in 0..<i{
                print("*", terminator: "")
            }
            print()
            spaces += 1
        }
}
    if shape == "Shape2"{
        for l in stride(from: number, to: 0, by: -1) {
            for m in 1...l{
                print("*", terminator: "")
            }
            print()
        }
    }
    if shape == "Shape3"{
        for n in stride(from: 0, to: number, by: 1) {
            for o in 0...n{
                print("*", terminator:(""))
        }
            print()
    }
    }
}
    

func main(){
    
    print("Enter the number: ")
    var number = Int(readLine()!)!
    
    print("Enter Shape (Shape1, Shape2, Shape3): ")
    var shape = readLine()!
    
    printShape(number: number, shape: shape)
    
}
    
main()
