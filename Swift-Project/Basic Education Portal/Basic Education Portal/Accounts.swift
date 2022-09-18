//
//  Accounts.swift
//  Basic Education Portal
//
//  Created by Shubhdeep on 2022-09-13.
//

import Foundation

class Accounts {
    
    var User: String
    var Pass: String
    
    init(User: String, Pass: String) {
        
        self.User = User
        self.Pass = Pass
        
    }
    
  
}

let account1 = Accounts(User: "user1", Pass: "password1")
let account2 = Accounts(User: "user2", Pass: "password2")
let account3 = Accounts(User: "user3", Pass: "password3")
let account4 = Accounts(User: "user4", Pass: "password4")
let account5 = Accounts(User: "user5", Pass: "password5")
let account6 = Accounts(User: "user6", Pass: "password6")
let account7 = Accounts(User: "user7", Pass: "password7")
let account8 = Accounts(User: "user8", Pass: "password8")

var listOfAccounts = [account1, account2, account3, account4, account5, account6, account7, account8]


