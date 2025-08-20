//
//  MRHomeScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRHomeScreen: View {
    @StateObject private var viewModel: MRHomeViewModel
    
    init(viewModel: MRHomeViewModel = MRHomeViewModel())  {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        ZStack {
            Color.whiteLevel2
                .ignoresSafeArea(edges: .all)
            
            ScrollView {
                MRSearchFieldView(searchText: $viewModel.searchText, placeholder: "Seach Property") {
                    
                }
                
                MRPropertySelectionView(selectedPropertyType: $viewModel.selectedPropertyType)
                
                
                
            }
        }
    }
}

#Preview {
    MRHomeScreen()
}
