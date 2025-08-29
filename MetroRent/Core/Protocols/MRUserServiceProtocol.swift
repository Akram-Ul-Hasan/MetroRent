//
//  MRUserServiceProtocal.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/29/25.
//

import Foundation

protocol MRUserServiceProtocol {
    func fetchUserById(by id: String) async throws -> MRUserModel
    
}
