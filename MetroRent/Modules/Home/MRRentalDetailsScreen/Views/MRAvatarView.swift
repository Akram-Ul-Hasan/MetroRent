//
//  MRAvatarView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRAvatarView: View {
    var url: URL?
    
    var body: some View {
        Group {
            if let url = url {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                    default:
                        Image(systemName: "person.crop.circle.fill")
                    }
                }
            } else {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(width: 44, height: 44)
        .clipShape(Circle())
    }
}
