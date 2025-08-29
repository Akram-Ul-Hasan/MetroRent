//
//  MRRentalMetaModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/29/25.
//

import Foundation

struct MRRentalMetaModel: Codable {
    let postedByUserId: String
    let postedDate: Date
    let lastUpdated: Date?
}
