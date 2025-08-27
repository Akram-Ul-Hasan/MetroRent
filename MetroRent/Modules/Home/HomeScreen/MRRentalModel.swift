//
//  MRRentalModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/26/25.
//

import Foundation

struct MRRentalModel: Identifiable {
    let id: UUID
    let title: String
    let propertyType: MRRentalType
    let rating: Double
    let location: String
    let capacity: Int?
    let pricePerMonth: Int
    let imageName: [String]
    var isFavorite: Bool = false
    
    init(title: String, propertyType: MRRentalType, rating: Double, location: String, capacity: Int?, pricePerMonth: Int, imageName: [String], isFavorite: Bool = false) {
        self.id = UUID()
        self.title = title
        self.propertyType = propertyType
        self.rating = rating
        self.location = location
        self.capacity = capacity
        self.pricePerMonth = pricePerMonth
        self.imageName = imageName
        self.isFavorite = isFavorite
    }
}
