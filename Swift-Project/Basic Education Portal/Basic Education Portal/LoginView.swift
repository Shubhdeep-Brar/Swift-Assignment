import Foundation

struct LoginView{

static func initializingPortal() {
        
    Functions.printEnterLoginInfo()
    
    print("Username: ")
    let Name = readLine()
    guard let unwrapped_UserName = Name else {
        print("Unable to unwrap the username to String")
        return
    }
    print("Password: ")
    let Pass = readLine()
    guard let unwrapped_Password = Pass else {
        print("Unable to unwrap the password")
        return
        
    }
    
    if Functions.whenloginDetailCorrect(user: unwrapped_UserName, Pass: unwrapped_Password, AccountsList: listOfAccounts) == false{
        
        Functions.printIncorrectCredentials()
        initializingPortal()

    }
    else {Functions.printWelcomeMessage()
    
    var inputMenuNumber: Int? = nil

  
    repeat{Functions.printMainMenu()
    inputMenuNumber = Int(readLine()!)
    
        if inputMenuNumber == 1 {
        
            MainMenuOptions.printEnrolmentCertificate(username: unwrapped_UserName, listOfStudents: studentsList)
        }
        else if inputMenuNumber == 2 {
        
            MainMenuOptions.printMyCourses(username: unwrapped_UserName, listOfStudents: studentsList, dictOfCourses: availableCourses)
        
        }
    
        else if inputMenuNumber == 3 {
        
            MainMenuOptions.printTranscript(username: unwrapped_UserName, listOfTranscripts: listOfStudentsTranscript, listOfStudents: studentsList)
        }
    
        else if inputMenuNumber == 4 {
        
            MainMenuOptions.printGPA(username: unwrapped_UserName, listOfTranscripts: listOfStudentsTranscript, listOfStudents: studentsList)
        
        }
    
        else if inputMenuNumber == 5 {
        
            MainMenuOptions.printGPA(username: unwrapped_UserName, listOfTranscripts: listOfStudentsTranscript, listOfStudents: studentsList)
        
            MainMenuOptions.printRank(username: unwrapped_UserName, listOfTranscripts: listOfStudentsTranscript, listOfStudents: studentsList)
        }
    
        else if inputMenuNumber == 6  {
        
            MainMenuOptions.printAvailableCourses(dictOfAvailableCourses: availableCourses)
        
        }
    
        else if inputMenuNumber == 7 {
        
            MainMenuOptions.printListOfStudents(listOfStudents: studentsList)
        }
    
        else if inputMenuNumber == 8 {
            initializingPortal()
        }
    
        else if inputMenuNumber == 9 {
            print("Portal has been terminated")
        }
} while(inputMenuNumber != nil && inputMenuNumber != 8 && inputMenuNumber != 9)

        }
    
    }
}
