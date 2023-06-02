//
//  ActivityIndicator.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/2/23.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
            let v = UIActivityIndicatorView()
            
            return v
        }
        
        func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
            if isAnimating {
                activityIndicator.startAnimating()
            } else {
                activityIndicator.stopAnimating()
            }
            
        }
}
