//
//  MRRatingView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRRatingView: View {
    var rating: Double
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "stat.fill")
                .foregroundStyle(Color.orange)
        }
    }
}

#Preview {
    MRRatingView(rating: 4.5)
}
