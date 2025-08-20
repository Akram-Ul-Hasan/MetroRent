//
//  MRMessageDetailsScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRMessageDetailsScreen: View {
    
    var messageArray = ["Hello!", "How are you doing?", "I am lookling for a apartment", "I saw you posted a rental for a 1 bedroom apartment", "I would like to take it"]
    var body: some View {
        VStack {
            MRMessageHeaderView()
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MRMessageBubbleView(message: MRMessage(id: "1", text: text, received: true, timestamp: Date()))
                }
            }
            .background(.whiteLevel1)
        }
        
        MRMessageTextFieldView()
    }
}

#Preview {
    MRMessageDetailsScreen()
}
