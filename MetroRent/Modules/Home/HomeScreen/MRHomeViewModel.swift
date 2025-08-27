//
//  MRHomeViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import Foundation

@MainActor
final class MRHomeViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var selectedPropertyType: MRRentalType = .all
    @Published var rentals: [MRRentalModel] = []
    @Published var showAllRental: Bool = false
    
    init() {
        loadSampleData()
    }
    
    func onSearch() {
        
        
    }
    
    func selectPropertyType(_ type: MRRentalType) {
        self.selectedPropertyType = type
    }
    
    private func loadSampleData() {
        rentals = [
            MRRentalModel(
                title: "Luxury Apartment",
                propertyType: .apartment,
                rating: 5.0,
                location: "New York, USA",
                capacity: 4,
                pricePerMonth: 1200,
                imageName: ["apartment1"]
            ),
            MRRentalModel(
                title: "Shared Room",
                propertyType: .sharedRoom,
                rating: 4.7,
                location: "Chicago, USA",
                capacity: 2,
                pricePerMonth: 400,
                imageName: ["room1"],
                isFavorite: true
            ),
            MRRentalModel(
                title: "Garage Space",
                propertyType: .garage,
                rating: 4.5,
                location: "San Francisco, USA",
                capacity: 1,
                pricePerMonth: 150,
                imageName: ["garage1"]
            )
        ]
    }
}
