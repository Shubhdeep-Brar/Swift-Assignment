//Define a class student as following:
//• The class has the following stored properties:
//o Name: which is a string
//o Scores: which is an array of course scores.
//• The class also has a computed property called average which is the average of courses’
//scores.
//• Define an array of arbitrary students. (Instance of students with random names and
//scores)
//• Find the top rank student.


//Asssumptions
// No student has same average
 
class Student {
    
    var Name: String
    var Scores: [Int]
    
    var average: Double{
        
        get{
            var sum = 0, count = 0
            for score in Scores{
                sum = sum + score
                count = count + 1
            }
            
            let average =  Double(sum/count)
            return average
        }
    }
    
    init(Name: String, Scores: [Int]) {
        
        self.Name = Name
        self.Scores = Scores
    }
}
    
     func topRankStudent(students: [Student]) -> Void {
        var highestGPA = students[0].average
        var highestGpaStudent =  students[0]
        
        for student in students {
            if student.average > highestGPA {
                highestGPA = student.average
                highestGpaStudent = student
                
            }
                
        }
        
        print("Student with highest rank is: \(highestGpaStudent.Name)")
        print("Highest Average Score : \(highestGpaStudent.average)")
        
        
        
        
    }



func main(){
    
    var listOfStudents: [Student] = []
    
    var student1 = Student(Name: "Shubhdeep", Scores: [80, 99, 95, 78, 88])
    
    var student2 = Student(Name: "Ramneek", Scores: [89, 94, 98, 80, 59])
    
    var student3 = Student(Name: "Saijal", Scores: [77, 100, 79, 84, 93])
    
    var student4 = Student(Name: "Dilpreet", Scores: [78, 94, 92, 73, 56])
    
    var student5 = Student(Name: "Roshni", Scores: [92, 79, 83, 94, 78])
    
    var student6 = Student(Name: "Bhavuk", Scores: [98, 76, 89, 92, 77])
    
    var student7 = Student(Name: "Jaiveer", Scores: [79, 100, 73, 88, 99])
    
    var student8 = Student(Name: "Fatehveer", Scores: [87, 95, 92, 78, 52])
    
    listOfStudents.append(student1)
    listOfStudents.append(student2)
    listOfStudents.append(student3)
    listOfStudents.append(student4)
    listOfStudents.append(student5)
    listOfStudents.append(student6)
    listOfStudents.append(student7)
    listOfStudents.append(student8)
    
    topRankStudent(students: listOfStudents)
    
}

main()
