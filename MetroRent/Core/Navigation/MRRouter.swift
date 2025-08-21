//
//  MRRouter.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

final class MRRouter<Route: Hashable>: ObservableObject {
    @Published var path: [Route]

    init(root: Route) {
        self.path = []
    }

    func push(_ route: Route) {
        path.append(route)
    }

    func pop() {
        if path.count > 1 {
            path.removeLast()
        }
    }

    func reset() {
        path = [path.first].compactMap { $0 }
    }
}
