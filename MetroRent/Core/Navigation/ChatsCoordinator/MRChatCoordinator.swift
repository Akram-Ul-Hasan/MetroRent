//
//  MRChatCoordinator.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

class MRChatCoordinator: ObservableObject {
    @Published var router = MRRouter<MRChatRouteType>()
}
