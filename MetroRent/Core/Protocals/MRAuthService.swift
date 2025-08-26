//
//  MRAuthService.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/25/25.
//


import FirebaseAuth
import Foundation

protocol MRAuthProtocol {
    func createUser(email: String, password: String) async throws -> AuthDataResultModel
    func loginUser(email: String, password: String) async throws -> User
    func logoutUser() throws
    func signInWithGoogle() async throws -> User
    func sendPasswordReset(email: String) async throws
    
    func setRememberMe(_ rememberMe: Bool, email: String?, password: String?)
    func getRememberedEmail() -> String?
    func getRememberedPassword() -> String?
    func isRememberMeEnabled() -> Bool
}
