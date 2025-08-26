//
//  MRRootNavigationView.swift
//  MetroRent
//
//  Created by Akram Ul Hasan on 8/18/25.
//

import SwiftUI

struct MRAppFlowController: View {
    @ObservedObject private var session = MRSessionManager.shared
    @StateObject private var tabCoordinator = MRMainTabCoordinator()
    @StateObject private var authCoordinator = MRAuthCoordinator()
    
    var body: some View {
        Group {
            switch currentFlow() {
                //            case .splash:
                //                EmptyView()
            case .onboarding:
                MROnboardingScreen()
                
            case .authentication:
                MRAuthView(coordinator: authCoordinator)
                
            case .main:
                MRMainTabView(coordinator: tabCoordinator)

            }
        }
        .animation(.easeInOut(duration: 0.3), value: session.currentUser)
    }
    
    private func currentFlow() -> MRAppFlow {
        if isFirstLunch() { return .onboarding}
        return session.currentUser == nil ? .authentication : .main
    }
    
    private func isFirstLunch() -> Bool {
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if !launchedBefore {
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            return true
        }
        return false
    }

}
