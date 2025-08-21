//
//  MRProfileHeaderView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRProfileHeaderView: View {
    var onEdit: () -> Void
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(Color(.separator), lineWidth: 0.5)
                }
                
            VStack(alignment: .leading, spacing: 4) {
                Text("Md Akram Ul Hasan")
                    .font(.caption)
                
                Text("akramulhasan66@gmail.com")
                    .font(.caption2)
                    .foregroundStyle(.blackLevel1)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                        .foregroundStyle(.secondary)
                    
                    Text("Edit Profile")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
    }
}

#Preview {
    MRProfileHeaderView() {
        
    }
}
