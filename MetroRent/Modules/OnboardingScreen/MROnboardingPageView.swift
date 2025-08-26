//
//  MROnboardingPageView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI

struct MROnboardingPageView: View {
    let page: MROnboardingPageModel
    
    var body: some View {
        ZStack {
            Image(page.imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipped()
                .overlay {
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }
            
            VStack(alignment: .leading, spacing: 12) {
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                Text(page.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 20)
                
                Spacer()
                
                if let subtitle = page.subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 8)
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    MROnboardingPageView(page: MROnboardingPageModel(imageName: "House.fill", title: "Welcome to MetroRent", subtitle: "Discover your next adventure with Qent. We're here to provide you with a seamless car rental experience. Let’s get started on your journey."))
}
