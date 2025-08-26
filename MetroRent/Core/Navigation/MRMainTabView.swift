//
//  MRMainNavigationView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRMainTabView: View {
    @ObservedObject var coordinator: MRMainTabCoordinator
    
    var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            MRHomeCoordinatorView(coordinator: coordinator.homeCoordinator)
                .tabItem {
                    Label(MRTabItem.home.title, systemImage: MRTabItem.home.icon)
                }
                .tag(MRTabItem.home)
            
            MRChatCoordinatorView(coordinator: coordinator.chatCoordinator)
                .tabItem {
                    Label(MRTabItem.chat.title, systemImage: MRTabItem.chat.icon)
                }
                .tag(MRTabItem.chat)
            
            MRProfileCoordinatorView(coordinator: coordinator.profileCoordinator)
                .tabItem {
                    Label(MRTabItem.profile.title, systemImage: MRTabItem.profile.icon)
                }
                .tag(MRTabItem.profile)
        }
    }
}
