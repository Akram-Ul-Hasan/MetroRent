//
//  MRAuthTextField.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI

struct MRAuthTextField: View {
    @Binding var text: String

    var placeholder: String
    var isSecure: Bool = false
    
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        HStack {
            if isSecure {
                Group {
                    if isPasswordVisible {
                        TextField(placeholder, text: $text)
                    } else {
                        SecureField(placeholder, text: $text)
                    }
                }
            } else {
                TextField(placeholder, text: $text)
            }
            
            if isSecure {
                Button {
                    isPasswordVisible.toggle()
                } label: {
                    Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 4)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(.systemGray), lineWidth: 0.5)
        )
        .padding(.horizontal)
    }
}

#Preview {
    MRAuthTextField(text: .constant(""), placeholder: "Enter your email")
}
