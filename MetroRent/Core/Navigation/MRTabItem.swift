//
//  MRTab.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import Foundation

enum MRTabItem: String, CaseIterable {
    case home
    case search
    case chat
    case notification
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .chat:
            return "Chat"
        case .notification:
            return "Notification"
        case .profile:
            return "Profile"
        }
    }
    var icon: String {
        switch self {
        case .home:
            return "house"
        case .search:
            return "magnifyingglass"
        case .chat:
            return "message"
        case .notification:
            return "bell"
        case .profile:
            return "person"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .home:
            return "house.fill"
        case .search:
            return "magnifyingglass"
        case .chat:
            return "message.fill"
        case .notification:
            return "bell.fill"
        case .profile:
            return "person.fill"
        }
    }
}
