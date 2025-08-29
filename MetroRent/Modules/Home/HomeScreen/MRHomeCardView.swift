//
//  MRHomeCardView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/26/25.
//

import SwiftUI

struct MRHomeCardView: View {
    let rental: MRRentalModel
    let onTap: () -> Void
    let onFavoriteTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .topTrailing) {
                Image(rental.media.imageURLs.first ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 140)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                
                Button(action: onFavoriteTap) {
                    Image(systemName: rental.isFavorite ? "heart.fill" : "heart")
                        .foregroundStyle(rental.isFavorite ? .red : .gray)
                        .padding(8)
                        .background(Color.whiteLevel1.opacity(0.2))
                        .clipShape(Circle())
                        .shadow(radius: 2)
                }
            }
//            .padding(0)
            
            VStack(alignment: .leading) {
                Text(rental.basic.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                                
                Text(rental.basic.propertyType.displayName)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 2)
                
                Text(rental.basic.location)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.top, 4)
                
            }
            
            HStack {
                Label("\(rental.basic.capacity ?? 0) person", systemImage: "person.2.fill")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                Text("\(rental.pricing.pricePerMonth)/Month")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundStyle(.primary)
            }
        }
        .padding()
        .background(.whiteLevel1)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    MRHomeCardView(rental: MRMockData.sampleRentalData, onTap: {}, onFavoriteTap: {})
}
