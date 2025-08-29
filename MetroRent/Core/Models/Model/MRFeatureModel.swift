//
//  MRFeatureModel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import Foundation

struct MRFeatureModel: Identifiable, Equatable {
    let id: UUID = .init()
    var icon: String
    var title: String
    var value: String
}
