//
//  MRRentalBasicModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRRentalBasicModel: Codable {
    let title: String
    let subtitle: String?
    let propertyType: MRRentalType
    let location: String
    let capacity: Int?
}
