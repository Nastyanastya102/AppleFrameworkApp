//
//  DetailView.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

struct DetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingActionSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 54, height: 54)
                    }
                    Spacer()
                }
                Spacer()
                FrameworkView(icon: framework.imageName, title: framework.name)
                Text(framework.description)
                    .padding(12)
                Spacer()
                Button {
                    isShowingActionSheet = true
                } label: {
                    AFButton(title: "Learn more")
                }
            }
        }
        .sheet(isPresented: $isShowingActionSheet) {
            SafaryView(url: (URL(string: framework.urlString) ?? URL(string: "https://apple.com")!))
        }
       
        
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
