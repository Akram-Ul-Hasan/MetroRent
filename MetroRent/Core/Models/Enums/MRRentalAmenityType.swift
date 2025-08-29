//
//  MRRentalAmenityType.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

enum MRRentalAmenityType: String, Identifiable, Codable {
    case wifi
    case parking
    case airConditioning
    case furnished
    case kitchen
    case balcony
    case lift
    case generator
    case swimmingPool
    case security
    case gymnasium
    
    var id: String {
        return rawValue
    }
    
    var title: String {
        switch self {
        case .wifi:
            return "Wi-Fi"
        case .parking:
            return "Parking"
        case .airConditioning:
            return "Air Conditioning"
        case .furnished:
            return "Furnished"
        case .kitchen:
            return "Kitchen"
        case .balcony:
            return "Balcony"
        case .lift:
            return "Lift(24/7)"
        case .generator:
            return "Generator"
        case .swimmingPool:
            return "Swimming Pool"
        case .security:
            return "Security"
        case .gymnasium:
            return "Gymnasium"
        }
    }
    
    var icon: String {
        switch self {
        case .wifi:
            return "wifi"
        case .parking:
            return "car.fill"
        case .airConditioning:
            return "wind"
        case .furnished:
            return "bed.double"
        case .kitchen:
            return "fork.knife"
        case .balcony:
            return "sum.max"
        case .lift:
            return "arrow.up.arrow.down"
        case .generator:
            return "bolt"
        case .swimmingPool:
            return "drop.fill"
        case .security:
            return "shield.fill"
        case .gymnasium:
            return "figure.strengthtraining.traditional"
        }
    }
}
