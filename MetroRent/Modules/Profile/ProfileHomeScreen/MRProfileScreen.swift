//
//  MRProfileScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRProfileScreen: View {
    var body: some View {
        ScrollView {
            MRProfileHeaderView() {
                
            }
            
            
        }
        
        .navigationBarTitle(MRStringConstants.profile.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MRProfileScreen()
    }
}
