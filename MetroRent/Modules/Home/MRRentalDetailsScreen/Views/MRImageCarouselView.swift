//
//  MRImageCarousel.swift
//  MetroRent
//
//  Created by Techetron Ventures Ltd on 8/28/25.
//

import SwiftUI

struct MRImageCarouselView: View {
    let images: [String]
    @State var currentIndex = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(images.indices) { index in
                let url = URL(string: images[index])!
                
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    case .failure:
                        ZStack {
                            Color(UIColor.secondarySystemBackground)
                            Image(systemName: "house.fill")
                                .font(.largeTitle)
                                .foregroundStyle(Color.gray)
                        }
                    @unknown default:
                        EmptyView()
                    }
                }
                .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .overlay(alignment: .bottom) {
            MRPageDotsView(count: images.count, index: currentIndex)
                .padding(.bottom, 10)
        }
    }
}

#Preview {
    MRImageCarouselView(images: [
        "https://www.tollbrothersapartmentliving.com/wp-content/uploads/2024/10/Remy-Pool-min.jpg",
        "https://images.ctfassets.net/pg6xj64qk0kh/2r4QaBLvhQFH1mPGljSdR9/39b737d93854060282f6b4a9b9893202/camden-paces-apartments-buckhead-ga-terraces-living-room-with-den_1.jpg",
        "https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    ])
}
