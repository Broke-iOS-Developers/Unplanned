//
//  Constants.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//

import Foundation

//Stores hard-coded string values
//Centralizes information


struct K{
    static let appName = "Unplanned"
    
    struct Segue{
        static let signUp = "toSignUp"
        static let login = "toLogIn"
        static let nextStep = "toNextStep"
        static let enjoy = "toEnjoyScreen"
        static let signUpToHome = "SignUptoHome"
        static let loginToHome = "LoginToHome"
    }
    
    //For User Defualts
    struct Keys{
        static let firstName = "firstName"
        static let lastName = "lastName"
        static let phoneNumber = "phoneNumber"
        static let username = "username"
        static let email = "email"
    }
}
