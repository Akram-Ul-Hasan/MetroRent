//
//  MRRentalPricingModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/29/25.
//

import Foundation

struct MRRentalPricingModel: Codable {
    let pricePerMonth: Int
    let securityDeposit: Int?
    let utilitiesIncluded: Bool
}
