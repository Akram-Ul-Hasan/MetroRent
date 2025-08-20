//
//  MRMessageBubbleView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRMessageBubbleView: View {
    var message: MRMessage
    @State private var showTimeStamp: Bool = false
    @State private var isExpanded: Bool = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background( message.received ? .pink.opacity(0.2) : .purple.opacity(0.2))
                    .cornerRadius(30)
            }
            .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTimeStamp.toggle()
            }
            
            if showTimeStamp {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing, 25)
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    let message = MRMessage(id: "1", text: "Hi there, How are you?", received: false, timestamp: Date())
    MRMessageBubbleView(message: message)
}
