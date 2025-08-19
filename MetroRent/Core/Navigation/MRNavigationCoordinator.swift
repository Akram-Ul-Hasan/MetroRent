//
//  Untitled.swift
//  MetroRent
//
//  Created by Akram Ul Hasan on 8/18/25.
//

import SwiftUI

class MRNavigationCoordinator: ObservableObject {
    @Published var appState: MRAppState = .home
    @Published var selectedTab: MRTabItem? = .home
    @Published var navigationStack: [MRNavigationRoute] = []
    
}
