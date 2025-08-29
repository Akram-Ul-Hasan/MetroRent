//
//  MRRentalDetailsViewModel.swift
//  MetroRent
//
//  Created by Akram Ul Hasan on 8/28/25.
//

import SwiftUI

@MainActor
final class MRRentalDetailsViewModel: ObservableObject {
    @Published private(set) var rental: MRRentalModel
    @Published var isFavorite: Bool = false
    @Published var host: MRUserModel?
    
    private var userService: MRUserServiceProtocol
    init(rental: MRRentalModel, userService: MRUserServiceProtocol = MRUserService()) {
        self.rental = rental
        self.userService = userService
        fetchHostUser()
    }
    
    func toggleFavorite() {
        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
            isFavorite.toggle()
        }
    }
    
    func fetchHostUser() {
        host = MRMockData.sampleUserData
        
//        Task {
//            do {
//                let user = try await userService.fetchUserById(by: rental.id)
//                self.host = user
//            } catch {
//                print("Failed to fetch user: \(error.localizedDescription)")
//            }
//        }
    }
}
