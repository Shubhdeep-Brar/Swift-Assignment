//
//  MainMenuOptions.swift
//  Basic Education Portal
//
//  Created by Shubhdeep on 2022-09-14.
//

import Foundation

struct MainMenuOptions {
    
    static func printEnrolmentCertificate(username: String, listOfStudents: [Student] ) {
        
        for student in listOfStudents{
            if username == student.User{
                var gender: String = ""
                if student.gender == "male"{
                    gender = "Mr."
                }
                else if student.gender == "female"{
                    gender = "Miss"}
            
                print(" Dear Sir/Madam, \n \n This is to certify that \(gender) \(student.name) with student id \(student.studentID) is a student at grade \(student.grade) at CICCC. He was admitted to our college in \(student.admission_year) and has taken \(student.courses.count) course(s). Currently he resides at \(student.address). \n \n If you have any question, please don’t hesitate to contact us.\n Thanks,\n Williams,")
            }
        }
    
    }
    
    static func printMyCourses(username: String, listOfStudents: [Student], dictOfCourses: [String : String]) {
        
        for student in listOfStudents{
            
            if username == student.User{
                print("Hi Mr.\(student.name),\n You have taken the following courses:")
                for studentCourse in student.courses {
                    for j in dictOfCourses{
                        if studentCourse == j.key {
                            var number = 1
                            print("\(number)) \(j.key) : \(j.value)")
                            number += 1
                        }
                    }
                }
        }
    }
    
}
    static func printAvailableCourses(dictOfAvailableCourses: [String : String]) {
        
        var count = 1
        print("The following courses are offered at CICCC: \n")
        for (key, value) in dictOfAvailableCourses {
            print("\(count)) \(key) : \(value)")
            count += 1
        }

    }
    
    static func printListOfStudents(listOfStudents: [Student]){
        
        var count = 1
        for student in listOfStudents {
            print("\(count) \(student.name) : \(student.studentID)")
            count += 1
            
        }
    }
    
    static func printTranscript(username: String, listOfTranscripts: [StudentsTranscript], listOfStudents: [Student]) {
        var number = 1
        var name: String = ""
        
        for student in listOfStudents{
            if username == student.User{
                name = student.name
            }
        }
        print(" Hi \(name), \n Here is your transcript:")
        for student_s_transcript in listOfTranscripts{
            if username == student_s_transcript.User{
                for (courseName, score) in student_s_transcript.transcript{
                print("\(number)) \(courseName) : \(score)")
                    number += 1
                }
            }
        }
        for student in listOfTranscripts{
            if username == student.User{
                print("Your GPA is: \(student.GPA)")
            }
        }
    }
    
    static func printGPA(username: String, listOfTranscripts: [StudentsTranscript], listOfStudents: [Student]){
        
        var name: String = ""
        
        for student in listOfStudents{
            if username == student.User{
                name = student.name
            }
        }
        print(" Hi \(name) ")
        
        for student in listOfTranscripts{
            if username == student.User{
                print("Your GPA is: \(student.GPA)")
            }
        }
    }
    
    static func printRank(username: String, listOfTranscripts: [StudentsTranscript], listOfStudents: [Student]) {
        
        let listToSortByGPA: [StudentsTranscript] = listOfTranscripts.sorted(by: {a,b in a.GPA > b.GPA})
    
        var rank = 1
        
        for user in listToSortByGPA{
            if user.User == username{
                guard let index = listToSortByGPA.firstIndex(of: user) else{
                    print("unable to unwrap the index")
                    return
                }
                rank = rank + index
            }
        }
        print("Your rank is \(rank)")
        
    }
}
    
