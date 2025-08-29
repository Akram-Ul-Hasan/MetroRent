//
//  MRUserModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

class MRUserModel: Identifiable, Codable {
    var id: String
    var profile: MRUserProfileModel
    var contact: MRUserContactModel
//    var preferences: MRUserPreferencesModel
//    var stats: MRUserStatsModel
    
    init(id: String = UUID().uuidString, profile: MRUserProfileModel, contact: MRUserContactModel/*, preferences: MRUserPreferencesModel, stats: MRUserStatsModel*/) {
        self.id = id
        self.profile = profile
        self.contact = contact
//        self.preferences = preferences
//        self.stats = stats
    }
}
