//
//  MRLoginScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI

struct MRLoginScreen: View {
    @StateObject var viewModel = MRLoginViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            
            Text("Welcome Back!")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text("Sign in to your account")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            
            MRAuthTextField(text: $viewModel.email, placeholder: "Email Address")
            
            MRAuthTextField(text: $viewModel.password, placeholder: "Password", isSecure: true)
            
            HStack {
                Button {
                    viewModel.isRememberMe.toggle()
                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: viewModel.isRememberMe ? "checkmark.square.fill" : "square")
                            .imageScale(.medium)
                        Text("Remember Me")
                            .font(.footnote)
                    }
                }
                .buttonStyle(.plain)
                .padding(.leading, 20)
                .accessibilityLabel(" Me")
                
                Spacer()
                Button("Forgot Password?") {
                    
                }
                .font(.footnote)
                .foregroundStyle(.blackLevel1)
                .padding(.trailing, 20)
            }
            
            MRPrimaryButton(title: "Login") {
                
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
            
            HStack(alignment: .center) {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)
                Button("Sign Up") {
                    
                }
                .fontWeight(.semibold)
                .foregroundStyle(.blackLevel1)
            }
            .font(.footnote)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    MRLoginScreen()
}
