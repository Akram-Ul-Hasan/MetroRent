//
//  MRResetPasswordViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/24/25.
//

import Foundation

@MainActor
final class MRResetPasswordViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var errorMessage: String?
    
    private var authService: MRAuthServiceProtocol
    
    init(authService: MRAuthServiceProtocol = MRAuthService.shared) {
        self.authService = authService
    }
    
    func sendResetLink() async {
        guard !email.isEmpty else {
            errorMessage = "Please enter your email."
            return
        }

        do {
            try await authService.sendPasswordReset(email: email)
            errorMessage = nil
            print("Password reset email sent. Please check your inbox.")
        } catch {
            errorMessage = error.localizedDescription
            print("Error sending password reset email: \(error.localizedDescription)")
        }
    }
}
