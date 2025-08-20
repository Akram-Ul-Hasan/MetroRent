//
//  MRMessageTextFieldView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/20/25.
//

import SwiftUI

struct MRMessageTextFieldView: View {
    @State private var text: String = ""
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                TextField("Type a message", text: $text)
            }
            
            Button {
                
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.blackLevel1)
                    .padding(10)
                    .background(Color.accentColor.opacity(0.2))
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.blackLevel1.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding()
        
    }
}

#Preview {
    MRMessageTextFieldView()
}
