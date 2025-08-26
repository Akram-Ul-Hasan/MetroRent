//
//  MRAuthManager.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import UIKit
import SwiftUI
import FirebaseAuth
import GoogleSignIn
import FirebaseCore

final class MRAuthManager: MRAuthProtocol {
    static let shared = MRAuthManager()
    
    private let defaults = UserDefaults.standard
    private let rememberMeKey = "rememberMe"
    private let emailKey = "userEmail"
    private let passwordKey = "userPassword"
    
    private init() { }
    
    func createUser(email: String, password: String) async throws -> AuthDataResultModel {
        let authDateResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authDateResult.user)
    }
    
    func loginUser(email: String, password: String) async throws -> User {
        let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return authResult.user
    }
    
    func logoutUser() throws {
        try Auth.auth().signOut()
    }
    
    func signInWithGoogle() async throws -> User {
        guard let topVC = await UIApplication.shared.topViewController else {
            throw NSError(domain: "GoogleSignIn", code: 0, userInfo: [NSLocalizedDescriptionKey: "Unable to get top view controller"])
        }
        
        guard let clientID = FirebaseApp.app()?.options.clientID else {
            throw NSError(domain: "GoogleSignIn", code: 0, userInfo: [NSLocalizedDescriptionKey: "Missing Google client ID"])
        }
        
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        return try await withCheckedThrowingContinuation { continuation in
            GIDSignIn.sharedInstance.signIn(withPresenting: topVC) { result, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }
                
                guard
                    let user = result?.user,
                    let idToken = user.idToken?.tokenString
                else {
                    continuation.resume(throwing: NSError(domain: "GoogleSignIn", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid Google user or ID token"]))
                    return
                }
                
                let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                               accessToken: user.accessToken.tokenString)
                
                Auth.auth().signIn(with: credential) { authResult, error in
                    if let error = error {
                        continuation.resume(throwing: error)
                    } else if let user = authResult?.user {
                        continuation.resume(returning: user)
                    } else {
                        continuation.resume(throwing: NSError(domain: "FirebaseAuth", code: 0, userInfo: [NSLocalizedDescriptionKey: "Unknown error"]))
                    }
                }
            }
            
        }
    }
    
    func sendPasswordReset(email: String) async throws {
        return try await withCheckedThrowingContinuation { continuation in
            Auth.auth().sendPasswordReset(withEmail: email) { error in
                if let error = error {
                    continuation.resume(throwing: error)
                    print("Error sending password reset email: \(error.localizedDescription)")
                } else {
                    continuation.resume(returning: ())
                    print("ok")
                }
            }
        }
    }
    
    func setRememberMe(_ rememberMe: Bool, email: String?, password: String?) {
        defaults.set(rememberMe, forKey: rememberMeKey)
        
        if rememberMe, let email = email, let password = password {
            defaults.set(email, forKey: emailKey)
            MRKeychainHelper.shared.save(password, forKey: passwordKey)
        } else {
            defaults.removeObject(forKey: emailKey)
            MRKeychainHelper.shared.delete(passwordKey)
        }
    }
    
    func getRememberedEmail() -> String? {
        return defaults.string(forKey: emailKey)
    }
    
    func getRememberedPassword() -> String? {
        return MRKeychainHelper.shared.read(passwordKey)
    }
    
    func isRememberMeEnabled() -> Bool {
        return defaults.bool(forKey: rememberMeKey)
    }
}
