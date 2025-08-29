//
//  MRRentalModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/26/25.
//

import Foundation

struct MRRentalModel: Identifiable {
    let id: String
    let basic: MRRentalBasicModel
    let details: MRRentalDetailsModel
    let pricing: MRRentalPricingModel
    let media: MRRentalMediaModel
    let meta: MRRentalMetaModel
    var isFavorite: Bool = false
    
    
    init(id: String = UUID().uuidString, basic: MRRentalBasicModel, details: MRRentalDetailsModel, pricing: MRRentalPricingModel, media: MRRentalMediaModel, meta: MRRentalMetaModel, isFavorite: Bool = false) {
        self.id = id
        self.basic = basic
        self.details = details
        self.pricing = pricing
        self.media = media
        self.meta = meta
        self.isFavorite = isFavorite
    }
}
