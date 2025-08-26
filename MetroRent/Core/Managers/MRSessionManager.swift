//
//  MRSessionManager.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/26/25.
//

import Foundation
import FirebaseAuth

final class MRSessionManager: ObservableObject {
    static let shared = MRSessionManager()
    private init() {
        listenAuthChanges()
    }
    
    @Published private(set) var currentUser: User? = nil
    private var authStateHandle: AuthStateDidChangeListenerHandle?

    var isLoggedIn: Bool {
        self.currentUser != nil
    }
    
    private func listenAuthChanges() {
        self.authStateHandle = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.currentUser = user
        }
    }
    
    func stopListeningAuthChanges() {
        if let handle = authStateHandle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
    
    func logout() async {
        do {
            try Auth.auth().signOut()
            currentUser = nil
        } catch {
            print("Error signing out: \(error)")
        }
    }
}
