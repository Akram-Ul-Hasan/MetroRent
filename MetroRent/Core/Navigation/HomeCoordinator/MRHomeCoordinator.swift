//
//  MRHomeCoordinator.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

class MRHomeCoordinator: ObservableObject {
    @Published var router = MRRouter<MRHomeRouteType>()
}
