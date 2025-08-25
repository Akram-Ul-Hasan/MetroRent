//
//  MRSignUpViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import Foundation

@MainActor
final class MRSignUpViewModel: ObservableObject {
    @Published var fullName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    
    @Published var errorMessage: String?
    @Published var isUserCreated: Bool = false
    
    var isFormValid: Bool {
        !fullName.isEmpty &&
        isValidEmail(email) &&
        isValidPassword(password) &&
        password == confirmPassword
    }
    
    func createAccount() async {
        guard !fullName.isEmpty else {
            errorMessage = "Full Name can not be empty."
            return
        }
        
        guard isValidEmail(email) else {
            errorMessage = "please enter a valid email address."
            return
        }
        
        guard isValidPassword(password) else {
            errorMessage = "Password must be at least 8 characters, 1 uppercase, 1 number"
            return
        }
        
        guard password == confirmPassword else {
            errorMessage = "Passwords do not match"
            return
        }
        
        errorMessage = nil
        
        do {
            let userDate = try await MRAuthManager.shared.createUser(email: email, password: password)
            self.isUserCreated = true
            print("User Created Successfully: \(userDate)")
        } catch {
            errorMessage = error.localizedDescription
            print("Error: \(error.localizedDescription)")
        }
        
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let regex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        let regex = #"^(?=.*[A-Z])(?=.*[0-9]).{8,}$"#
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: password)
    }
    
    func signinWithGoogle() async {
        do {
            let user = try await MRAuthManager.shared.signInWithGoogle()
            print("User signed in successfully")
        } catch {
            print("Google Sign In Failed: \(error.localizedDescription)")
        }
    }
}
