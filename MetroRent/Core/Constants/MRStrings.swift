//
//  StringConstants.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

enum MRStrings {
    enum app {
        static let appName = "MetroRent"
        static let logo = "house.fill"
    }
    
    enum home {
        static let title = "Home"
    }
    
    enum search {
        static let title = "Search"
    }
    
    enum chats {
        static let title = "Chats"
    }
    
    enum notification {
        static let title = "Notification"
    }
    
    enum profile {
        static let title = "Profile"
    }
    
    enum auth {
        
        enum login {
            static let title = "Welcome Back!"
            static let subtitle = "Sign in to your account"
            static let emailPlaceholder = "Email Address"
            static let passwordPlaceholder = "Password"
            static let rememberMe = "Remember Me"
            static let forgotPassword = "Forgot Password?"
            static let loginButton = "Login"
            static let loginWithGoogleButton = "Login with Google"
            static let dontHaveAccountText = "Don't have an account?"
            static let signUpButton = "Sign Up"
        }
        
        enum signup {
            static let title = "Sign Up"
            static let fullNamePlaceholder = "Full Name"
            static let emailPlaceholder = "Email Address"
            static let passwordPlaceholder = "Password"
            static let confirmPasswordPlaceholder = "Confirm Password"
            static let createAccountButton = "Create Account"
            static let loginWithGoogleButton = "Login with Google"
            static let alreadyHaveAccount = "Already have an account?"
            static let loginButtonTitle = "Login"
        }
        
        enum resetPassword {
            static let title = "Reset Password"
            static let subtitle = "Enter the email address associated with your account and we’ll send you a link to reset your password."
            static let emailPlaceholder = "Enter email address"
            static let buttonTitle = "Continue"
            static let returnToLogin = "Return to Login"
        }
        
    }
}
