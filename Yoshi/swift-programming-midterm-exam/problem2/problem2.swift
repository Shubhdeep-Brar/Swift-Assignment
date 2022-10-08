import Foundation

class Student{
    private var age = 10
    private var email = ""
    private var takenCourses = 6
    private var gpa = 68

    init(_ age: Int, _ email: String, _ takenCourses: Int, _ gpa: Int){
        self.age = age
        self.email = email
        self.takenCourses = takenCourses
        self.gpa = gpa
    }

    func getAge() -> Int {
        return self.age
    }

    func getEmail() -> String {
        return self.email
    }

    func getTakenCourses() -> Int {
        return self.takenCourses
    }

    func getGPA() -> Int {
        return self.gpa
    }
}


class Search{
    static func searchForStudents(list students: [Student], with condition: (Student)->Bool, their specification: (Student)->String,
    action perform: (String)->Void){

        for student in students{
            if condition(student){
                let spec = specification(student)
                perform(spec)
            }
        }
    }
}

let st1 = Student(23, "a.gmail.com", 5, 78)
let st2 = Student(22, "b.gmail.com", 8, 72)
let st3 = Student(19, "c.gmail.com", 7, 63)
let st4 = Student(25, "d.gmail.com", 6, 81)
let st5 = Student(24, "e.gmail.com", 4, 66)
let st6 = Student(22, "f.gmail.com", 7, 81)

var students:[Student] = []
students.append(st1)
students.append(st2)
students.append(st3)
students.append(st4)
students.append(st5)
students.append(st6)

print("2-1")
Search.searchForStudents(list: students, with: { student in student.getAge() > 22 }, their: { student in student.getEmail() }, action: { email in print(email) })
print()

print("2-2")
Search.searchForStudents(list: students, with: { student in student.getAge() >= 20 && student.getAge() <= 23 }, their: { student in student.getEmail() }, action: { email in print(email) })
print()

print("2-3")
Search.searchForStudents(list: students, with: { student in student.getTakenCourses() > 5 }, their: { student in "Email: \(student.getEmail()), GPA: \(student.getGPA())" }, action: { result in print(result) })
print()

print("2-4")
Search.searchForStudents(list: students, with: { _ in true }, their: { student in "Email: \(student.getEmail()), GPA: \(student.getGPA()), Age: \(student.getAge()), Number of courses: \(student.getTakenCourses())" }, action: { result in print(result) })
print()
