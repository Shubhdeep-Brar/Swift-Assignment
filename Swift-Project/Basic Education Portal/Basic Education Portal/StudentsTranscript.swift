//1studentID:"7813007"
//2courseID:"MADP101"
//3mark:"85"
//1studentID:"7813007"
//2courseID:"MADP301"
//3mark:"60"
//1studentID:"7813007"
//2courseID:"MADP402"
//3mark:"62"
//1studentID:"7813007"
//2courseID:"MADP401"
//3mark:"60"

import Foundation

struct StudentsTranscript: Equatable {
    
    
    var studentID: String
//    var courseID: String
//    var mark: String
    var User: String
    var transcript: [String: Int]
    var GPA: Double {
        get{
             var count = 0
             var totalMarks = 0
            for mark in transcript.values{
                totalMarks = totalMarks + mark
                count += 1
            }
             return Double(totalMarks/count)
        }
        
        
    }
//
//    init(studentID: String, transcript: [String : Int], User: String){
//    self.studentID = studentID
//    self.transcript = transcript
//    self.User = User
//    }
}

let studentcourses1 = StudentsTranscript(studentID: "7813007", User: "user1", transcript: ["MADP101" : 85, "MADP301" : 60, "MADP402" : 62, "MADP401" : 60])


let studentcourses2 = StudentsTranscript(studentID: "7813008", User: "user2", transcript: ["MADP102" : 80, "MADP302" : 75, "MADP401" : 84, "MADP101" : 55])

let studentcourses3 = StudentsTranscript(studentID: "7813009", User: "user3", transcript: ["MADP101" : 77,"MADP402" : 73, "MADP201" : 89])

let listOfStudentsTranscript = [studentcourses1, studentcourses2, studentcourses3]

