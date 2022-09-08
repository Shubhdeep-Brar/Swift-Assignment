struct Student{
    
    var firstName: String
    var lastName: String
    var address: String
    var yearOfBirth: Int
    var gpa: Double
    
    static func printStudent(student: Student){
        print("First Name: \(student.firstName), Last Name: \(student.lastName), Address: \(student.address), Year of Birth: \(student.yearOfBirth), gpa: \(student.gpa)")
}
}


class Classroom {
    
    var students: [Student] = []
    
    func generateList(){
        
        let student1 = Student(firstName: "Tom", lastName: "Smith", address: "Surrey", yearOfBirth: 1999, gpa: 3.29)
        let student2 = Student(firstName: "Harry", lastName: "Cheema", address: "Mission", yearOfBirth: 1994, gpa: 2.85)
        let student3 = Student(firstName: "Dilpreet", lastName: "Sidhu", address: "Bathinda", yearOfBirth: 1997, gpa: 3.87)
        let student4 = Student(firstName: "Sharry", lastName: "Mann", address: "Mohali", yearOfBirth: 1987, gpa: 4.00)
        let student5 = Student(firstName: "Shubhdeep", lastName: "Brar", address: "Vancouver", yearOfBirth: 1986, gpa: 3.89)
        let student6 = Student(firstName: "Fatehveer", lastName: "Singh", address: "Goniana", yearOfBirth: 2002, gpa: 2.27)
        let student7 = Student(firstName: "Harpreet", lastName: "Stan", address: "Rampura", yearOfBirth: 2003, gpa: 1.84)
        let student8 = Student(firstName: "Ramneek", lastName: "Kaur", address: "Abohar", yearOfBirth: 1998, gpa: 2.87)
        let student9 = Student(firstName: "Saijal", lastName: "Arora", address: "Chandigarh", yearOfBirth: 2000, gpa: 4.25)
        let student10 = Student(firstName: "Satsarup", lastName: "Phil", address: "Manila", yearOfBirth: 2005, gpa: 2.99)
        
        self.students.append(student1)
        self.students.append(student2)
        self.students.append(student3)
        self.students.append(student4)
        self.students.append(student5)
        self.students.append(student6)
        self.students.append(student7)
        self.students.append(student8)
        self.students.append(student9)
        self.students.append(student10)
    }
        
        func getHighestGpa() -> Student? {
            if self.students.isEmpty {
                return nil
            }
            var highestGpa = self.students[0].gpa
            var highestGpaStudent = self.students[0]
            
            for student in self.students{
                if highestGpa < student.gpa{
                    highestGpa = student.gpa
                    highestGpaStudent = student
            }
        }
            Student.printStudent(student: highestGpaStudent)
            return highestGpaStudent
            
    }
     
}
    func main() {
        let classroom = Classroom()
        classroom.generateList()
        classroom.getHighestGpa()
    }
    
    main()
