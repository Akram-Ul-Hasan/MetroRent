//
//  MRSectionActionType.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/27/25.
//

import Foundation

enum MRSectionActionType {
    case seeAll
    case viewAll
    
    var title: String {
        switch self {
        case .seeAll: return "See All"
        case .viewAll: return "View All"
        }
    }
    
}
