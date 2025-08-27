//
//  MRSectionHeaderView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/19/25.
//

import SwiftUI

struct MRSectionHeaderView: View {
    let title: String
    let actionType: MRSectionActionType?
    let onActionTap: (() -> Void)?
    
    init(
            title: String,
            actionType: MRSectionActionType? = nil,
            onActionTap: (() -> Void)? = nil
    ) {
        self.title = title
        self.actionType = actionType
        self.onActionTap = onActionTap
    }
        
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color.primary)
            
            Spacer()
            
            if let actionType, let onActionTap {
                Button(action: onActionTap) {
                    Text(actionType.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.blackLevel1)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MRSectionHeaderView(title: "Recommended", actionType: .seeAll) {
        
    }
}
