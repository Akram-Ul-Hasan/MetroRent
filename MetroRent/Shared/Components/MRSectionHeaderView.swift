//
//  MRSectionHeaderView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRSectionHeaderView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundStyle(Color.blackLevel1)
            .padding()
    }
}

#Preview {
    MRSectionHeaderView(title: "Recommended")
}
