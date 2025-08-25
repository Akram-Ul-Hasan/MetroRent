//
//  MRAuthenticationCoordinator.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/23/25.
//

import Foundation

class MRAuthenticationCoordinator: ObservableObject {
    @Published var path: [MRAuthRouteType] = []
    
    func push(_ route: MRAuthRouteType) {
        path.append(route)
    }
   
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func reset() {
        path.removeAll()
    }
}
