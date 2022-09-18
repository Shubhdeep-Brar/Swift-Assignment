//1courseID:"MADP101"
//2name:"Objective-C"
//3courseID:"MADP301"
//4name:"Project Management"
//5courseID:"MADP402"
//6name:"Android Programming"


import Foundation

class Courses {
    
    var courseID: String
    var name: String
    
    init(courseID: String, name: String){
        self.courseID = courseID
        self.name = name
    }
    
    
    static func makeAvailableCoursesDict(courses: [Courses]) -> [String : String] {
        var CoursesDict = [String : String]()
        for course in courses{
            CoursesDict[course.courseID] = course.name
        }
        return CoursesDict
        
    }
}

let course1 = Courses(courseID: "MADP101", name: "Objective-C")
let course2 = Courses(courseID: "MADP301", name: "Java Programming")
let course3 = Courses(courseID: "MADP402", name: "IOS Application")
let course4 = Courses(courseID: "MADP102", name: "Object-Oriented Programming")
let course5 = Courses(courseID: "MADP201", name: "Problem Solving")
let course6 = Courses(courseID: "MADP202", name: "Project Management")
let course7 = Courses(courseID: "MADP302", name: "Web Development")
let course8 = Courses(courseID: "MADP401", name: "Android Programming")

let listOfCourses = [course1, course2, course3, course4, course5, course6, course7, course8]

let availableCourses = Courses.makeAvailableCoursesDict(courses: listOfCourses)

