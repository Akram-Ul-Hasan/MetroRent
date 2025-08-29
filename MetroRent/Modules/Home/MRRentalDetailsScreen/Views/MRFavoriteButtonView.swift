//
//  MRFavoriteButtonView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRFavoriteButtonView: View {
    var isOn: Bool
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: isOn ? "heart.fill" : "heart")
                .font(.title3)
                .foregroundStyle(isOn ? .red : .primary)
                .padding(10)
                .background(.ultraThinMaterial, in: Circle())
                .accessibilityLabel(isOn ? "Remove from favorites" : "Add to favorites")
        }
    }
    
}

