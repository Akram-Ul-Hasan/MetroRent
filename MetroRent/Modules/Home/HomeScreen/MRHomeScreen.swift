//
//  MRHomeScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRHomeScreen: View {
    @StateObject private var viewModel = MRHomeViewModel()
    @EnvironmentObject private var coordinator: MRHomeCoordinator
    
    let gridColoms = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.whiteLevel2
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 30) {
                    
                    MRSearchFieldView(searchText: $viewModel.searchText, placeholder: "Seach Property") {}
                    
                    VStack {
                        MRSectionHeaderView(title: "Property Type")
                        
                        MRPropertySelectionView(selectedPropertyType: $viewModel.selectedPropertyType)
                    }
                    
                    VStack {
                        MRSectionHeaderView(
                            title: "Recommended",
                            actionType: viewModel.rentals.count > 2 && !viewModel.showAllRental ? .viewAll : nil) {
                                withAnimation {
                                    viewModel.showAllRental = true
                                }
                            }
                        
                        
                        if viewModel.showAllRental {
                            LazyVGrid(columns: gridColoms, spacing: 10) {
                                ForEach(viewModel.rentals) { rental in
                                    MRHomeCardView(
                                        rental: rental, onTap: {
                                            
                                        },
                                        onFavoriteTap: {
                                            
                                        }
                                    )
                                    .onTapGesture {
                                        // TODO: Navigate to detail
                                    }
                                }
                            }
                            .padding(.horizontal, 16)
                            
                        } else {
                            HStack(spacing: 10) {
                                ForEach(viewModel.rentals.prefix(2)) { rental in
                                    MRHomeCardView(
                                        rental: rental, onTap: {
                                            
                                        },
                                        onFavoriteTap: {
                                            
                                        }
                                    )
                                    .frame(maxWidth: .infinity)
                                    .onTapGesture {
                                        
                                    }
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                }
                .padding(.top, 0)
            }
            .padding(.top, 0)
        }
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                HStack(spacing: 8) {
                    Image(systemName: MRStrings.app.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.primary)
                    
                    Text(MRStrings.app.appName)
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.primary)
                }
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    print("Notification tapped")
                }) {
                    Image(systemName: "bell.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            
            // Profile picture button
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("Profile tapped")
                }) {
                    
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 36, height: 36)
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MRHomeScreen()
    }
}
