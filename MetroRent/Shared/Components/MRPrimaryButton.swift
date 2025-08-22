//
//  MRPrimaryButton.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI

struct MRPrimaryButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button {
            
        } label: {
            Text(title)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blackLevel1)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

#Preview {
    MRPrimaryButton(title: "Log in") {
        
    }
}
