//
//  MRUserPreferencesModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRUserPreferencesModel: Codable {
    var recommendedCategories: [MRRentalType] = []
    var nearbyEnabled: Bool = true
}
