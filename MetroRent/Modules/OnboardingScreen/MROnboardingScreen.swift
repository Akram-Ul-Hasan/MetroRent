//
//  MROnboardingScreen.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import SwiftUI

struct MROnboardingScreen: View {
    @StateObject private var viewModel = MROnboardingViewModel()
    
    var body: some View {
        ZStack {
            Image(viewModel.pages[viewModel.currentPageIndex].imageName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            LinearGradient(
                colors: [Color.black.opacity(0.95), Color.black.opacity(0.25), Color.black.opacity(0.95)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .padding(20)
                
                TabView(selection: $viewModel.currentPageIndex) {
                    ForEach(0..<viewModel.pages.count, id: \.self) { index in
                        VStack {
                            Text(viewModel.pages[index].title)
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            if let subtitle = viewModel.pages[index].subtitle {
                                Text(subtitle)
                                    .font(.subheadline)
                                    .foregroundColor(.white.opacity(0.9))
                                    .padding()
                            }
                            Spacer(minLength: 0)
                        }
                        .tag(index)
                        .padding(.horizontal, 20)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                Button{
                    if viewModel.currentPageIndex == viewModel.pages.count - 1 {
                        
                    } else {
                        viewModel.currentPageIndex += 1
                    }
                } label: {
                    if viewModel.currentPageIndex == viewModel.pages.count - 1 {
                        Text("Get Started")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    } else {
                        Text("Next")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 24)
            }
            .padding(.horizontal, 24)
            .animation(.easeInOut, value: viewModel.currentPageIndex)
        }
    }
}

#Preview {
    MROnboardingScreen()
}
