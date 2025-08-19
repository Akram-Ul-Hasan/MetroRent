//
//  MRHomeViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import Foundation

class MRHomeViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var selectedPropertyType: MRPropertyType = .all
    
    func onSearch() {
        
        
    }
    
    func selectPropertyType(_ type: MRPropertyType) {
        self.selectedPropertyType = type
    }
}
