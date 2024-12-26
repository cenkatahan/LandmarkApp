//
//  DetailView.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import SwiftUI

struct DetailView: View {
    let landmark: Landmark
    
    var body: some View {
        
        ZStack(
            alignment: Alignment(horizontal: .center, vertical:.center)
        ){
            
        }
        
        
        ZStack(alignment: .topLeading){
            landmark.image.resizable()
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.green)
                    .padding(.horizontal)
                Text(landmark.description).padding().foregroundStyle(.indigo)
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    DetailView(landmark: mockLandmarks.first!)
}
