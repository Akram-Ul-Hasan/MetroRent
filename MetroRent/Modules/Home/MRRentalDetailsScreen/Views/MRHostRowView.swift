//
//  MRHostRowView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRHostRowView: View {
    var host: MRUserModel
    var onMessage: () -> Void
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            
        }
    }
}

#Preview {
    let host = MRUserModel(id: "user123", profile: MRUserProfileModel(name: "Akram Ul Hasan", isVerified: true, address: "Dhaka, Bangladesh"), contact: MRUserContactModel(email: "akram@gmail.com"))
    
    
    MRHostRowView(host: host) {
        
    }
}
