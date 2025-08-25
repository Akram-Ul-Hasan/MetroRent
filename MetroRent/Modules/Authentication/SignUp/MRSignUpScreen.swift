//
//  MRSignUpScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import SwiftUI
import GoogleSignInSwift

struct MRSignUpScreen: View {
    @StateObject var viewModel = MRSignUpViewModel()
    @EnvironmentObject private var coordinator: MRAuthenticationCoordinator
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: MRStrings.app.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.primary)
    
                Text(MRStrings.app.appName)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(MRStrings.auth.signup.title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            MRAuthTextField(text: $viewModel.fullName, placeholder: MRStrings.auth.signup.fullNamePlaceholder)
            MRAuthTextField(text: $viewModel.email, placeholder: MRStrings.auth.signup.emailPlaceholder)
            MRAuthTextField(text: $viewModel.password, placeholder: MRStrings.auth.signup.passwordPlaceholder, isSecure: true)
            MRAuthTextField(text: $viewModel.confirmPassword, placeholder: MRStrings.auth.signup.confirmPasswordPlaceholder, isSecure: true)
            
            MRPrimaryButton(title: MRStrings.auth.signup.createAccountButton) {
                Task {
                    print("createAccountpressed")
                    await viewModel.createAccount()
                }
            }
            .alert("Success", isPresented: $viewModel.isUserCreated) {
                Button("OK") {
                    coordinator.pop()
                }
            } message: {
                Text("Your account has been created successfully.")
            }
            
            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
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
            
            GoogleSignInButton(viewModel: GoogleSignInButtonViewModel(scheme: .dark, style: .icon, state: .normal)) {
                Task {
                    await viewModel.signinWithGoogle()
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
                        
            Spacer()
            
            HStack {
                Text(MRStrings.auth.signup.alreadyHaveAccount)
                
                Button(MRStrings.auth.signup.loginButtonTitle) {
                    coordinator.pop()
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
