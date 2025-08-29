//
//  MRRentalDetailsModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRRentalDetailsModel: Codable {
    let description: String?
    let amenities: [MRRentalAmenityType]
    let rules: [String]
    let rating: Double
    let ratingCount: Int?
}
