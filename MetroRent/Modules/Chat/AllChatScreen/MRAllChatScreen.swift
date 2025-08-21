//
//  MRAllMessageScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/20/25.
//

import SwiftUI

struct MRAllChatScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
            MRAllMessageHeaderView()
            
            Divider()
            
//            List(chats) { chat in
                MRMessageRowView()
//            }
//            .listStyle(PlainListStyle())
            Spacer()
                
        }
        .navigationTitle("Chats")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationStack {
        MRAllChatScreen()
    }
}
