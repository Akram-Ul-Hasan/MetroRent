//
//  MRProfileViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

@MainActor
final class MRProfileViewModel: ObservableObject {
    @Published var showLogoutAlert: Bool = false
    private var session = MRSessionManager.shared
    
    var General: [MRProfileMenuModel] = [
        .init(title: "Previous Rant", systemImageName: "text.bubble.fill", route: .previousRants),
        .init(title: "Notification", systemImageName: "bell.fill", route: .notification),
        .init(title: "Settings", systemImageName: "globe", route: .settings),
        .init(title: "Languages", systemImageName: "questionmark.circle", route: .language),
    ]
    
    var support: [MRProfileMenuModel] = [
        .init(title: "Invite Friends", systemImageName: "person.2.fill", route: .inviteFriends),
        .init(title: "Privacy Policy", systemImageName: "lock.shield.fill", route: .privacyPolicy),
        .init(title: "Help & Support", systemImageName: "questionmark.circle.fill", route: .helpAndSupport),
        .init(title: "Terms & Conditions", systemImageName: "", route: .termsAndConditions),
        .init(title: "Log out", systemImageName: "rectangle.portrait.and.arrow.right", route: .logout, isDestructive: true)
    ]
    
    func handleSelection(of menu: MRProfileMenuModel) {
        if menu.route == .logout {
            showLogoutAlert = true
        } else {
//
        }
    }
    
    func confirmLogout() async {
        showLogoutAlert = false
        
        await self.session.logout()
    }
}
