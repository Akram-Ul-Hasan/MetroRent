//
//  MRRentalType.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import Foundation

enum MRRentalType: String, CaseIterable {
    case all
    case apartment
    case singleRoom
    case sharedRoom
    case garage
    
    var displayName: String {
        switch self {
        case .all:
            return "All"
        case .apartment:
            return "Apartment"
        case .singleRoom:
            return "Single Room"
        case .sharedRoom:
            return "Shared Room"
        case .garage:
            return "Garage"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .all:
            return "square.grid.2x2"
        case .apartment:
            return "house"
        case .singleRoom:
            return "person"
        case .sharedRoom:
            return "person.2"
        case .garage:
            return "car"
        }
    }
}
