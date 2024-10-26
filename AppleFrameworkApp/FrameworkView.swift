//
//  FrameworkView.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

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

#Preview {
    FrameworkView(icon: "app-icon", title: "Dummy text")
}
