//
//  MRMainNavigationView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRMainNavigationView: View {
    @EnvironmentObject var coordinator: MRNavigationCoordinator
    
    var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            ForEach(MRTabItem.allCases, id: \.self) { tab in
                NavigationStack(path: $coordinator.navigationStack) {
                    tabContent(for: tab)
                        .navigationDestination(for: MRNavigationRoute.self) { route in
                            destinationView(for: route)
                        }
                }
            }
        }
    }
    
    @ViewBuilder
    private func tabContent(for tab: MRTabItem) -> some View {
        switch tab {
        case .home:
            EmptyView()
        case .search:
            EmptyView()
        case .communication:
            EmptyView()
        case .notification:
            EmptyView()
        case .profile:
            EmptyView()
        }
    }
    
    @ViewBuilder
    private func destinationView(for route: MRNavigationRoute) -> some View {
        switch route {
        case .home:
            EmptyView()
        }
    }
}
