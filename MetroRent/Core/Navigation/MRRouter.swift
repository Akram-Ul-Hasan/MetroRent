//
//  MRRouter.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

final class MRRouter<Route: Hashable>: ObservableObject {
    @Published var path: [Route] = []

    func push(_ route: Route) {
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
