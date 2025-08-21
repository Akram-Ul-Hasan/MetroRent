//
//  Untitled.swift
//  MetroRent
//
//  Created by Akram Ul Hasan on 8/18/25.
//

import SwiftUI

class MRNavigationCoordinator: ObservableObject {
    @Published var appState: MRAppState = .rootTab
    @Published var selectedTab: MRTabItem? = .home
    
    @Published var homeCoordinator = MRHomeCoordinator()
    @Published var chatCoordinator = MRChatCoordinator()
    @Published var profileCoordinator = MRProfileCoordinator()
}
