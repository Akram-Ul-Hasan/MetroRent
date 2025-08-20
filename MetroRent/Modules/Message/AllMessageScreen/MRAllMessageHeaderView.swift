//
//  MRAllMessageHeaderView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/20/25.
//

import SwiftUI

struct MRAllMessageHeaderView: View {
    @State var searchText: String = ""
    @State var selectedFilter: MRMessageFilterType = .all
    var body: some View {
        MRSearchFieldView(searchText: $searchText, placeholder: "Search") {
            
        }
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(MRMessageFilterType.allCases, id: \.self) { type in
                    Button {
                        selectedFilter = type
                    } label: {
                        Text(type.rawValue)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == type ? .semibold : .regular)
                            .foregroundStyle(selectedFilter == type ? Color.mint : Color.blackLevel1)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(
                                Capsule()
                                    .fill(selectedFilter == type ? Color.mint.opacity(0.2) : Color.whiteLevel1)
                            )
                            .overlay {
                                Capsule()
                                    .stroke(selectedFilter == type ? Color.mint : Color.blackLevel1, lineWidth: 1)
                            }
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical)
        }
        
        
    }
}

#Preview {
    MRAllMessageHeaderView()
}
