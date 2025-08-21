//
//  MRMessageHeaderView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRMessageHeaderView: View {
    var imageUrl: URL = URL(string: "https://static.desygner.com/wp-content/uploads/sites/13/2022/05/04141642/Free-Stock-Photos-01.jpg")!
    var name = "Akram"
    
    var body: some View {
        HStack(spacing: 10) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
            
            Image(systemName: "video.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
            
        }
        .padding()
        .background(.mint.opacity(0.2))
    }
}

#Preview {
    MRMessageHeaderView()
}
