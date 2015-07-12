//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func registerUser(userInfo:[String:String]){
    
    guard let name = userInfo["name"] where name.characters.count > 3
        else{
            print("Name is not valid", appendNewline: true)
            return
    }
    
    guard let email = userInfo["email"]
        else{
            print("Email is required", appendNewline: true)
            return
    }
    
    guard let password = userInfo["password"] where password.characters.count > 6
        else{
            print("Invalid password", appendNewline: true)
            return
    }
    
    print("Successfully regsiter user \(name) with email \(email)", appendNewline: true)
    
    
}

registerUser(["name":"John", "email" :"a@l.com"]) // "Invalid password\n"
registerUser(["name":"John", "password":"12345"]) // "Email is required\n"
registerUser(["name":"John", "email" :"a@l.com", "password":"1234567"]) // "Successfully regsiter user John with email a@l.com\n"
