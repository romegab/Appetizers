//
//  EmptyState.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 8.02.24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250.0, height: 250.0)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50.0)
        }
    }
    
}

#Preview(body: {
    EmptyState(imageName: "empty-order", message: "test")
})
