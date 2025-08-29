//
//  MRRentalDetailsScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRRentalDetailsScreen: View {
    @StateObject var viewModel: MRRentalDetailsViewModel
    @ObservedObject var coordinator: MRHomeCoordinator
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 18) {
                    ZStack(alignment: .topTrailing) {
                        MRImageCarouselView(images: viewModel.rental.media.imageURLs)
                            .frame(height: 280)
                            .background(Color.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .shadow(color: .black.opacity(0.2), radius: 16, x: 0, y: 8)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                        
                        MRFavoriteButtonView(isOn: viewModel.isFavorite) {
                            viewModel.toggleFavorite()
                            
                        }
                        .padding(.trailing, 40)
                        .padding(.top, 50)
                    }
                    
                    HStack(alignment: .top, spacing: 10) {
                        VStack(alignment: .leading) {
                            Text(viewModel.rental.basic.title)
                                .font(.system(size: 22, weight: .semibold))
                                .foregroundStyle(.blackLevel1)
                            Text(viewModel.rental.basic.subtitle ?? "")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            MRRatingView(rating: viewModel.rental.details.rating)
                            Text(String(format: "%.1f", viewModel.rental.details.ratingCount ?? 0))
                                .font(.subheadline).bold()
                            Text("(\(5)+reviews)")
                        }
                    }
                    .padding(20)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(.purple)
                    )
                    .overlay(alignment: .top) {
                        Divider().padding(.top, -8).opacity(0)
                    }
                    .padding(.horizontal, 20)
                    
                    Divider()
                        .padding()
                    
                    if let host = viewModel.host {
                        MRHostRowView(host: host) {
                            
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        MRSectionHeaderView(title: MRStrings.rentalDetails.features)
                        
                        MRFeaturesGridView(features: viewModel.rental.details.amenities)
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                    //                    ScrollView(.horizontal, showsIndicators: false) {
                    //                        HStack {
                    //
                    //                        }
                    //                    }
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Apply Now")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Image(systemName: "arrow.right")
                                .font(.system(size: 15, weight: .semibold))
                            Spacer()
                        }
                        .padding()
                        .foregroundStyle(Color.whiteLevel1)
                        .background(Color(.label))
                        .clipShape(Capsule())
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 50)
                    
                    
                }
                .padding(.bottom, 120)
            }
            .navigationTitle(MRStrings.rentalDetails.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 14, weight: .semibold))
                            .frame(width: 32, height: 32)
                            .padding(2)
                            .contentShape(Circle())
                        
                    }
                    .buttonStyle(.plain)
                    .background(.clear)
                    .clipShape(Circle())
                    .overlay {
                        Circle().strokeBorder(.separator, lineWidth: 1)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        let rental = MRMockData.sampleRentalData
        let vm = MRRentalDetailsViewModel(rental: rental)
        
        MRRentalDetailsScreen(viewModel: vm, coordinator: MRHomeCoordinator())
    }
    .environmentObject(MRHomeCoordinator())
}
