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
        rentals = [MRMockData.sampleRentalData]
    }
}
