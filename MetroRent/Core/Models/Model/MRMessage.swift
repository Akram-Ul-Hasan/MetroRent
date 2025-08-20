//
//  MRMessage.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import Foundation

struct MRMessage: Codable, Identifiable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
    
    
}
