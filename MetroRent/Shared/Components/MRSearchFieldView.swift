//
//  MRSearchFieldView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRSearchFieldView: View {
    @Binding var searchText: String
    
    var onSearch: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                    TextField("Seach your needs...", text: $searchText)
                        .foregroundStyle(.primary)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                }
                .padding(12)
                .background(Color.whiteLevel1)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.15), radius: 4, x: 2, y: 4)
                
                
                Button {
                    onSearch()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.blackLevel1)
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color.whiteLevel1)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 4)
                        
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal)
        }
        .padding()
        .background(.whiteLevel2)
    }
}

#Preview {
    MRSearchFieldView(searchText: .constant("Hello")) {
        print("Search tapped!")
    }
}
