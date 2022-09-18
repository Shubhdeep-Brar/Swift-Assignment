//1studentID:"7813007"
//2name:"firstname lastname1"
//3gender:"male"
//4grade:"2"
//5address:"850 West Hastings, Vancouver"
//6admission_year:"2012"
//7courses:"MADP101,MADP20244,MADP301,MADP401"
//1studentID:"7813008"
//2name:"firstname lastname2"
//3gender:"male"
//4grade:"3"
//5address:"850 West Vancouver, Vancouver"
//6admission_year:"2012"
//7courses:"MADP101"
//1studentID:"7813009"
//2name:"firstname lastname3"
//3gender:"male"
//4grade:"3"
//5address:"850 West Vancouver, Vancouver"
//6admission_year:"2012"
//7courses:"MADP101"

import Foundation

class Student {
    
    var studentID: String
    var name: String
    var gender: String
    var grade: String
    var address: String
    var admission_year: String
    var courses: [String]
    var User: String
    
                             

    
    init(studentID: String, name: String, gender: String, grade: String, address: String, admission_year: String, courses: [String], User: String)
    {
        self.studentID = studentID
        self.name = name
        self.gender = gender
        self.grade = grade
        self.address = address
        self.admission_year = admission_year
        self.courses = courses
        self.User = User

    }
}
    
let student1 = Student(studentID: "7813007", name: "firstname lastname1", gender: "male", grade: "2", address: "850 West Hastings, Vancouver", admission_year: "2012", courses: ["MADP101","MADP20244","MADP301","MADP401"], User: "user1")


let student2 = Student(studentID: "7813008", name: "firstname lastname2", gender: "male", grade: "3", address: "850 West Vancouver, Vancouver", admission_year: "2012", courses: ["MADP102", "MADP302", "MADP401", "MADP101"], User: "user2")


let student3 = Student(studentID: "7813009", name: "firstname lastname3", gender: "male", grade: "3", address: "850 West Vancouver, Vancouver", admission_year: "2012", courses: ["MADP101","MADP402", "MADP201"], User: "user3")

let studentsList = [student1, student2, student3]

