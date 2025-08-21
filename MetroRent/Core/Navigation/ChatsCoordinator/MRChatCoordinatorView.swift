//
//  MRChatCoordinatorView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRChatCoordinatorView: View {
    @ObservedObject var coordinator: MRChatCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.router.path) {
            MRAllChatScreen()
                .navigationDestination(for: MRChatRouteType.self) { route in
                    switch route {
                    case .chats:
                        MRAllChatScreen()
                    }
                }
        }
    }
}
