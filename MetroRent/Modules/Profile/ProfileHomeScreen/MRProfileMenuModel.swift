//
//  MRProfileMenuModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import Foundation

struct MRProfileMenuModel {
    let id = UUID()
    let title: String
    let systemImageName: String
    let route: MRProfileRouteType
    var isDestructive: Bool = false
    var showChevron: Bool = true
}
