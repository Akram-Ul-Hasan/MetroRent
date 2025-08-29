//
//  MRMockData.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/29/25.
//

import Foundation

struct MRMockData {
    static let sampleRentalData = MRRentalModel(
        basic: MRRentalBasicModel(
            title: "Cozy 2BHK Apartment",
            subtitle: "Near Dhanmondi Lake",
            propertyType: .apartment,
            location: "104/A,Gulshan 2, Dhaka",
            capacity: 6
        ),
        details: MRRentalDetailsModel(
            description: "Spacious and modern apartment, perfect for small families.",
            amenities: [.wifi, .parking, .furnished, .balcony, .airConditioning, .generator, .gymnasium, .lift, .security],
            rules: ["No pets allowed"],
            rating: 4.7,
            ratingCount: 120
        ),
        pricing: MRRentalPricingModel(
            pricePerMonth: 25000,
            securityDeposit: 50000,
            utilitiesIncluded: true
        ),
        media: MRRentalMediaModel(
            imageURLs: [
                "https://www.tollbrothersapartmentliving.com/wp-content/uploads/2024/10/Remy-Pool-min.jpg",
                "https://images.ctfassets.net/pg6xj64qk0kh/2r4QaBLvhQFH1mPGljSdR9/39b737d93854060282f6b4a9b9893202/camden-paces-apartments-buckhead-ga-terraces-living-room-with-den_1.jpg",
                "https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
            ],
            videoURL: nil
        ),
        meta: MRRentalMetaModel(
            postedByUserId: "user123",
            postedDate: Date(),
            lastUpdated: nil
        )
    )
    
    static let sampleUserData = MRUserModel(
        id: "user123",
        profile: MRUserProfileModel(
            name: "Akram Ul Hasan",
            isVerified: true,
            address: "Dhaka, Bangladesh"
        ),
        contact: MRUserContactModel(
            email: "akramulhasan6@gmail.com",
            phone: "+8801905445315"
        )
    )
    
}
