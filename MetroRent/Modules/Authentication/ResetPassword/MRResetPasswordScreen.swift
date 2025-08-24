//
//  MRResetPasswordScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/24/25.
//

import SwiftUI

struct MRResetPasswordScreen: View {
    @StateObject private var viewModel = MRResetPasswordViewModel()
    
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
            
            VStack(alignment: .center, spacing: 20) {
                Text(MRStrings.auth.resetPassword.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(MRStrings.auth.resetPassword.subtitle)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 320)
                    .padding(.horizontal)
                
                MRAuthTextField(text: $viewModel.email, placeholder: MRStrings.auth.resetPassword.emailPlaceholder)
                
                
                MRPrimaryButton(title: MRStrings.auth.resetPassword.buttonTitle) {
                    
                }
                
                
                Button {
                    
                } label: {
                    Text(MRStrings.auth.resetPassword.returnToLogin)
                        .foregroundStyle(.blackLevel1)
                        .padding(.top, 20)
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, alignment: .center)
                
            Spacer()

        }
    }
}

#Preview {
    MRResetPasswordScreen()
}
