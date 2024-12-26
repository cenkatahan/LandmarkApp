//
//  HomeLandmarkView.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import SwiftUI

struct HomeView: View {
    @State var landmarks = mockLandmarks
    
    
    var body: some View {
        
        LazyVStack(alignment: .leading) {
            ForEach(landmarks) { landmark in
                NavigationLink(destination: DetailView(landmark: landmark)) {
                        
                    HStack {
                        landmark.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 50)
                            .padding(.trailing, 12)
                        
                        Text(landmark.name).font(.title)
                    }
                }
                Spacer()
            }
        }.navigationTitle(Text("Home")).padding(.horizontal, 16)
        
        Spacer()
    }
}

#Preview {
    HomeView()
}
