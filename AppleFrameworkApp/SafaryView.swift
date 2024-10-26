//
//  SafaryView.swift
//  AppleFrameworkApp
//
//  Created by Nastya Klyashtorna on 2024-10-25.
//

import SwiftUI
import UIKit
import SafariServices

struct SafaryView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafaryView>) -> some SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafaryView>) {}
    
}
