//
//  MRPropertySelectionView.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/18/25.
//

import SwiftUI

struct MRPropertySelectionView: View {
    
    @Binding var selectedPropertyType: MRRentalType
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(MRRentalType.allCases, id: \.self) { type in
                    VStack(alignment: .center, spacing: 8) {
                        Image(systemName: type.systemImageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(selectedPropertyType == type ? .white : .whiteLevel1)
                            .padding()
                            .background(selectedPropertyType == type ? Color.blueLevel1 : Color.blackLevel1)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(.blackLevel1, lineWidth: 1)
                            )
                        
                        Text(type.displayName)
                            .font(.subheadline)
                            .foregroundStyle(.blackLevel1)
                    }
                    
                    .onTapGesture {
                        withAnimation {
                            selectedPropertyType = type
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    MRPropertySelectionView(selectedPropertyType: .constant(.all))
}
