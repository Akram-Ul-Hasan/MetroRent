//
//  MRAuthenticationCoordinatorView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import SwiftUI

struct MRAuthenticationCoordinatorView: View {
    @StateObject var coordinator = MRAuthenticationCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MRLoginScreen()
            
                .navigationDestination(for: MRAuthRouteType.self) { route in
                    switch route {
                    case .login:
                        MRLoginScreen()
                    case .signup:
                        MRSignUpScreen()
                    case .forgotPassword:
                        MRResetPasswordScreen()
                    }
                }
        }
        .environmentObject(coordinator)
    }
}
