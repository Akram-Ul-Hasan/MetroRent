//
//  MetroRentApp.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

@main
struct MetroRentApp: App {
    @StateObject private var coordinator = MRNavigationCoordinator()
    
    var body: some Scene {
        WindowGroup {
            MRRootNavigationView()
                .environmentObject(coordinator)
        }
    }
}
