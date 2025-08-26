//
//  MRNotificationHomeScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRNotificationHomeScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                
            }
            .navigationTitle(MRStrings.notification.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack {
        MRNotificationHomeScreen()
    }
}
