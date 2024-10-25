//
//  ContentView.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModal = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    let data = MockData()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.frameworks) { framework in
                            FrameworkView(icon: framework.imageName, title: framework.name)
                                .onTapGesture {
                                    viewModal.selectedItem = framework
                                }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModal.isShowingDetails) {
                DetailView(framework: viewModal.selectedItem ?? MockData.sampleFramework, isShowingDetailView: $viewModal.isShowingDetails)
            }
        }
       
    }
}

#Preview {
    FrameworkGridView()
}
