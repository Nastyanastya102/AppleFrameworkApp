//
//  ContentView.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    let data = MockData()
    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                FrameworkView(icon: "app-clip"', title: "App Clip")
            }
        }
        .padding()
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkView: View {
    let icon: String
    let title: String
    
    var body: some View {
        VStack {
            Image(icon)
                .resizable()
                .frame(width: 90, height: 90)
            Text(title)
                .bold()
                .font(.title)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        
    }
}
