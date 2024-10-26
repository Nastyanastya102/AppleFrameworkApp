//
//  AFButton.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

struct AFButton: View {
    let title: String
    var body: some View {
        Text(title)
        .bold()
        .font(.title2)
        .frame(width: 280, height: 70)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(14)
    }
}

#Preview {
    AFButton(title: "Learn more")
}
