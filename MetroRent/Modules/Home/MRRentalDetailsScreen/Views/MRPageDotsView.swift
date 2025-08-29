//
//  MRPageDots.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRPageDotsView: View {
    let count: Int
    let index: Int
    
    var body: some View {
        HStack(spacing: 6) {
            ForEach(0..<count, id: \.self) { i in
                Circle()
                    .fill(i == index ? Color.primary : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding(6)
        .background(Color.white.opacity(0.2), in: Capsule())
    }
}
