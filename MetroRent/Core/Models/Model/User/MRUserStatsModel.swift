//
//  MRUserStatsModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRUserStatsModel: Codable {
    var postsCount: Int
    var activeRentals: Int
    var lastActive: Date
}
