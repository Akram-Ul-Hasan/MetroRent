//
//  MRLoginViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import Foundation

@MainActor
final class MRLoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isRememberMe: Bool = false
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private var auth: MRAuthServiceProtocol
    
    init(authService: MRAuthServiceProtocol = MRAuthService.shared) {
        self.auth = authService
        loadRememberedCredentials()
    }
    
    func login() async {
        errorMessage = nil
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Enter email and password."
            return
        }
        
        isLoading = true
        defer { isLoading = false }

        do {
            let _ = try await auth.loginUser(email: email, password: password)
            
            if isRememberMe {
                auth.setRememberMe(true, email: email, password: password)
            } else {
                auth.setRememberMe(false, email: nil, password: nil)
            }
            print("User Logged In Successfully")
            
        } catch {
            errorMessage = error.localizedDescription
            print("Error: \(error.localizedDescription)")
        }
    }
    
    func signinWithGoogle() async {
        do {
            _ = try await auth.signInWithGoogle()
            print("User signed in successfully")
        } catch {
            print("Google Sign In Failed: \(error.localizedDescription)")
        }
    }
    
    func loadRememberedCredentials() {
        if auth.isRememberMeEnabled() {
            email = auth.getRememberedEmail() ?? ""
            password = auth.getRememberedPassword() ?? ""
            isRememberMe = true
        }
    }
    
    
}
