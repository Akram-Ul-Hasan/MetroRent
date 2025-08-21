//
//  MRMessageRowView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/20/25.
//

import SwiftUI

struct MRMessageRowView: View {
    var imageUrl: URL = URL(string: "https://static.desygner.com/wp-content/uploads/sites/13/2022/05/04141642/Free-Stock-Photos-01.jpg")!
    var isOnline: Bool = true
    var name: String = "John Doe"
    var message: String = "Hello, there!"
    var time: String = "12:34 PM"
    var unreadCount: Int = 5
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            ZStack {
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50  )
                        .clipShape(Circle())
                    
                } placeholder: {
                    ProgressView()
                }
                
                if isOnline {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 12, height: 12)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .offset(x: 18, y: 18)
                }
                
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                    .lineLimit(1)
                
                Text(message)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
            Spacer()
            
            // Time + unread badge
            VStack(alignment: .trailing, spacing: 6) {
                Text(time)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                if unreadCount > 0 {
                    Text("\(unreadCount)")
                        .font(.caption2)
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Circle().fill(Color.blue))
                }
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
    }
}

#Preview {
    MRMessageRowView()
}
