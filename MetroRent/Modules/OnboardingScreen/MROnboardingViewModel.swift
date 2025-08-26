//
//  MROnboardingViewModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/22/25.
//

import Foundation

class MROnboardingViewModel: ObservableObject {
    @Published var currentPageIndex: Int = 0

    @Published var pages: [MROnboardingPageModel] = [
        MROnboardingPageModel(
            imageName: "onboardingImage1",
            title: "Welcome to MetroRent",
            subtitle: nil
        ),
        MROnboardingPageModel(
            imageName: "onboardingImage2",
            title: "A new era of renting",
            subtitle: "Discover your next adventure with Qent. We're here to provide you with a seamless car rental experience. Let’s get started on your journey."
        )
    ]
    
}
