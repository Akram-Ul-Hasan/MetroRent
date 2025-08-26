//
//  MRLoginScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct MRLoginScreen: View {
    @EnvironmentObject var coordinator: MRAuthCoordinator
    
    @StateObject var viewModel = MRLoginViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Image(systemName: MRStrings.app.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.primary)
    
                Text(MRStrings.app.appName)
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(MRStrings.auth.login.title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text(MRStrings.auth.login.subtitle)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            
            MRAuthTextField(text: $viewModel.email, placeholder: MRStrings.auth.login.emailPlaceholder)
            
            MRAuthTextField(text: $viewModel.password, placeholder: MRStrings.auth.login.passwordPlaceholder , isSecure: true)
            
            HStack {
                Button {
                    viewModel.isRememberMe.toggle()
                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: viewModel.isRememberMe ? "checkmark.square.fill" : "square")
                            .imageScale(.medium)
                        Text(MRStrings.auth.login.rememberMe)
                            .font(.footnote)
                    }
                }
                .buttonStyle(.plain)
                .padding(.leading, 20)
                .accessibilityLabel(" Me")
                
                Spacer()
                Button(MRStrings.auth.login.forgotPassword) {
                    coordinator.push(.forgotPassword)
                }
                .font(.footnote)
                .foregroundStyle(.blackLevel1)
                .padding(.trailing, 20)
            }
            
            MRPrimaryButton(title: MRStrings.auth.login.loginButton) {
                Task {
                    await viewModel.login()
                }
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
            
            HStack(alignment: .center) {
                Text(MRStrings.auth.login.dontHaveAccountText)
                    .foregroundStyle(.secondary)
                Button(MRStrings.auth.login.signUpButton) {
                    coordinator.push(.signup)
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
