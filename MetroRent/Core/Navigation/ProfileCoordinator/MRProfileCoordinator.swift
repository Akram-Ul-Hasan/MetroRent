//
//  MRProfileCoordinator.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

class MRProfileCoordinator: ObservableObject {
    @Published var router = MRRouter(root: MRProfileRouteType.profile)
}
