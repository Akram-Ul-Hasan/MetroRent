//
//  MRProfileCoordinatorView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRProfileCoordinatorView: View {
    @ObservedObject var coordinator: MRProfileCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.router.path) {
            MRProfileScreen()
                .navigationDestination(for: MRProfileRouteType.self) { route in
                    switch route {
                    case .profile:
                        MRProfileScreen()
                    case .editProfile:
                        EmptyView()
                    case .previousRants:
                        EmptyView()
                    case .notification:
                        EmptyView()
                    case .settings:
                        EmptyView()
                    case .language:
                        EmptyView()
                    case .inviteFriends:
                        EmptyView()
                    case .privacyPolicy:
                        EmptyView()
                    case .helpAndSupport:
                        EmptyView()
                    case .termsAndConditions:
                        EmptyView()
                    case .logout:
                        EmptyView()
                    }
                }
        }
    }
}
