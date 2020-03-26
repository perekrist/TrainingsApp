//
//  CustomController.swift
//  TrainingsApp
//
//  Created by Кристина Перегудова on 25.03.2020.
//  Copyright © 2020 perekrist. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomController: UIViewControllerRepresentable {

    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController>) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Storyboard", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Home")
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController>) {
        
    }
    
}
