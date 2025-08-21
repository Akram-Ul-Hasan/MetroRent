//
//  MRHomeCoordinatorView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRHomeCoordinatorView: View {
    @ObservedObject var coordinator: MRHomeCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.router.path) {
            MRHomeScreen()
                .navigationDestination(for: MRHomeRouteType.self) { route in
                    switch route {
                    case .home:
                        MRProfileScreen()
                    
                    }
                }
        }
    }
}
