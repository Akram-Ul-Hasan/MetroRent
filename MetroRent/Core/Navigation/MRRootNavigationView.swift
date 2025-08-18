//
//  MRRootNavigationView.swift
//  MetroRent
//
//  Created by Akram Ul Hasan on 8/18/25.
//

import SwiftUI

struct MRRootNavigationView: View {
    @EnvironmentObject var coordinator: MRNavigationCoordinator
    var body: some View {
        Group {
            switch coordinator.appState {
            case .splash:
                EmptyView()
            case .home:
                EmptyView()
            }
                
        }
        .animation(.easeInOut(duration: 0.3), value: coordinator.appState)
    }
}
