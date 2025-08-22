//
//  MRSignUpScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import SwiftUI

struct MRSignUpScreen: View {
    @StateObject var viewModel = MRSignUpViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.primary)
    
                Text("MetroRent")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text("Sign Up")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            MRAuthTextField(text: $viewModel.fullName, placeholder: "Full Name")
            MRAuthTextField(text: $viewModel.email, placeholder: "Email Address")
            MRAuthTextField(text: $viewModel.password, placeholder: "Password", isSecure: true)
            
            MRPrimaryButton(title: "Sign Up") {
                
            }
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray.opacity(0.3))
                Text("OR")
                    .foregroundStyle(.gray)
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray.opacity(0.3))
            }
            .padding(.horizontal)
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "globe")
                    Text("Login with Google")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.blackLevel1)
                .background(Color(.systemGray6))
                .cornerRadius(12)
            }
            .padding(.horizontal)
                        
            Spacer()
            
            HStack {
                Text("Already have an account?")
                
                Button("Login") {
                    
                }
                .fontWeight(.semibold)
                .foregroundColor(.blackLevel1)
            }
            .font(.footnote)
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    MRSignUpScreen()
}
