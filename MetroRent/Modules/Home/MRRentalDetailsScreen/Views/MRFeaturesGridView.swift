//
//  MRFeaturesGridView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRFeaturesGridView: View {
    var features: [MRRentalAmenityType]
    private let coloms = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: coloms, spacing: 10) {
            ForEach(features) { feature in
                MRFeatureCardView(feature: feature)
            }
        }
    }
}
