//
//  FrameworkGridViewModel.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedItem: Framework? = nil {
        didSet {
            isShowingDetails = true
        }
    }
    @Published var isShowingDetails: Bool = false
}

