//
//  MRProfileHomeRowView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/21/25.
//

import SwiftUI

struct MRProfileHomeRowView: View {
    let menu: MRProfileMenuModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: menu.systemImageName)
                .foregroundStyle(menu.isDestructive ? .red : .blackLevel1)
                .frame(width: 25, height: 25)
                .padding(10)
                .background(
                    Circle()
                        .strokeBorder(Color.gray, lineWidth: 0.5)
                        .opacity(menu.isDestructive ? 0 : 1)
                )
            
            Text(menu.title)
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(menu.isDestructive ? .red : .blackLevel1)
            
            Spacer()
            
            if menu.showChevron && !menu.isDestructive {
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
        }
        .padding(.vertical, 20)
    }
}

#Preview {
    MRProfileHomeRowView(menu: MRProfileMenuModel(title: "Notification", systemImageName: "bell.fill", route: .notification))
}
