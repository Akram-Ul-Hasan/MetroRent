//
//  MRFeatureCard.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRFeatureCardView: View {
    var feature: MRRentalAmenityType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: feature.icon)
                .font(.title3)
                .frame(width: 36, height: 36)
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
            
            Text(feature.title)
                .font(.footnote)
                .foregroundStyle(.secondary)
            
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(RoundedRectangle(cornerRadius: 12).fill(.gray))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blackLevel1.opacity(0.25), lineWidth: 0.6)
        )
    }
}

