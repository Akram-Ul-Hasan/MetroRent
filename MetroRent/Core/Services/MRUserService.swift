//
//  MRUserService.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/29/25.
//

import Foundation
import Firebase

final class MRUserService: MRUserServiceProtocol {
    private let db = Firestore.firestore()
    
    func fetchUserById(by id: String) async throws -> MRUserModel {
        let document = try await db.collection("users").document(id).getDocument()
        guard let data = document.data() else {
            fatalError("User not found")
        }
        
        return try Firestore.Decoder().decode(MRUserModel.self, from: data)
    }
    
}
