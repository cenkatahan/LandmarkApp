//
//  DetailView.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import SwiftUI

struct DetailView: View {
    let landmark: Landmark
    @State var isFavorite: Bool = false
    var body: some View {
        
        VStack{
            MapView(coordinate: landmark.coordinate)
                .frame(height: UIScreen.main.bounds.height * 0.5)
            
            landmark.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .clipShape(Circle())
                .offset(y: UIScreen.main.bounds.height * -0.1)
                .shadow(radius: 10)
            
            VStack {
                HStack{
                    Image(systemName: isFavorite ? "star.fill" : "star")
                        .resizable()
                        .foregroundColor(.yellow)
                        .frame(width: 30, height: 30)
                        .onTapGesture(perform: {
                            isFavorite = !isFavorite
                        })
                    Spacer()
                    Text(landmark.name).font(.largeTitle)
                    Spacer()
                    Text("\(landmark.location.lat) \n \(landmark.location.lng)")
                }.offset(y: UIScreen.main.bounds.height * -0.1)
            }.padding(.horizontal, 16)
            
            Text(landmark.description).font(.title)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    DetailView(landmark: mockLandmarks[0])
}
