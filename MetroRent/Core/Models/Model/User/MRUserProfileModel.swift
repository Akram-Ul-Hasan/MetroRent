//
//  MRUserProfileModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRUserProfileModel: Codable {
    var name: String
    var isVerified: Bool
    var address: String?
    var profileImageURL: String?
}
