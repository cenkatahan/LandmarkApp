//
//  ContentView.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            NavigationView {
                HomeView()
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ContentView()
}
