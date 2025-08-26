//
//  MetroRentApp.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI
import Firebase

@main
struct MetroRentApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject private var session = MRSessionManager.shared
    
    var body: some Scene {
        WindowGroup {
            MRAppFlowController()
                .environmentObject(session)
        }
    }
}
