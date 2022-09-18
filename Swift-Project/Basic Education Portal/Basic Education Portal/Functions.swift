//
//  Functions.swift
//  Basic Education Portal
//
//  Created by Shubhdeep on 2022-09-15.
//

import Foundation

struct Functions {
    
    static func printEnterLoginInfo(){
        print("********************************************************")
        print("Please enter your account to login: ")
        print("********************************************************")
    }
    
    static func whenloginDetailCorrect(user: String, Pass: String, AccountsList: [Accounts]) -> Bool {
        
        var result = false
        for account in AccountsList{
            if account.User == user && account.Pass == Pass {
            result = true }
        }
        return result
    }
        
    static func whenLoginDetailsIncorrect(user: String, Pass: String, AccountsList: [Accounts]) -> Bool {
        
        var result = true
        for account in AccountsList{
            if (account.User != user && account.Pass != Pass) || (account.User != user && account.Pass == Pass) || (account.User == user && account.Pass != Pass) {
                result = false }
            }
        return result
    }
    
    static func printWelcomeMessage() {
        print("*************************************************************")
        print("Welcome to Cornerstone International College of Canada. ")
        print("*************************************************************")
    }
    
    static func printIncorrectCredentials() {
        print("*************************************************************")
        print("Your account does not exist. Please try again! ")
        print("*************************************************************")
    }
    
    static func printMainMenu(){
    print("""
    ************************************************************
    Select from the options:
    ************************************************************
    —-[1] Print my enrolment certificate
    —-[2] Print my courses
    —-[3] Print my transcript
    —-[4] Print my GPA
    —-[5] Print my ranking among all students in the college
    —-[6] List all available courses
    —-[7] List all students
    -—[8] Logout
    -—[9] Exit
    ************************************************************
    Enter the number corresponding to each item to proceed:
    """)
    }
    
    
//    
//    static func getInformation() -> (username: String?, pasword: String?) {
//        print("Enter your username: ")
//        let username = readLine() ?? ""
//        
//        print("Enter your password: ")
//        let password = readLine() ?? ""
//        
//        return (username, password)
//    }
    
//    static func inputUsernameAndPassword(){
//        print("Username: ")
//        let Name = readLine()
//        guard let unwrapped_UserName = Name else {
//            print("Unable to unwrap the username to String")
//            return
//        }
//        print("Password: ")
//        let Pass = readLine()
//        guard let unwrapped_Password = Pass else {
//            print("Unable to unwrap the password to String")
//            return
//        }
//    }
      
}
