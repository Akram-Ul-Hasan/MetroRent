//
//  MRSearchHomeScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRSearchHomeScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .navigationTitle(MRStrings.search.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MRSearchHomeScreen()
    }
}
