//
//  LoadingView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 6.02.24.
//

import SwiftUI

struct ActivityIndecator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandMain
        activityIndicatorView.startAnimating()
        
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            ActivityIndecator()
        }
    }
}
