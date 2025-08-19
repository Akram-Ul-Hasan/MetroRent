//
//  MRHomeNearByView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRHomeNearByView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                MRSectionHeaderView(title: "Recomemnded")
                
                Spacer()
                
                MRSeeAllButtonView()
            }
            
            
            
        }
    }
}

#Preview {
    MRHomeNearByView()
}
