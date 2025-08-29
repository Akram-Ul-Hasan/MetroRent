//
//  MRCircleIconButton.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRCircleIconButtonView: View {
    var systemName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .font(.subheadline.weight(.semibold))
                .frame(width: 36, height: 36)
                .background(.ultraThinMaterial, in: Circle())
        }
    }
}
