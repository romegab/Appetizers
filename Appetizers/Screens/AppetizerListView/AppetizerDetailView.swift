//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 7.02.24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 200)
            
            VStack(spacing: 24.0) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 32.0) {
                    VStack(spacing: 5.0) {
                        Text("Callories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5.0) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5.0) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
                
            }
            .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260.0, height: 50.0)
                    .foregroundColor(.white)
                    .background(.brandPrimary)
                    .cornerRadius(10.0)
            }
            .padding(.bottom, 30.0)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12.0)
        .shadow(radius: 40.0)
        .overlay(Button {
            isShowingDetails = false
        } label: {
            Image(systemName: "xmark")
                .foregroundColor(.black)
                .frame(width: 30.0, height: 30.0)
                .background(Color(.init(white: 1.0, alpha: 0.5)))
                .cornerRadius(15.0)
                .padding(EdgeInsets(top: 8.0, leading: 0.0, bottom: 0.0, trailing: 8.0))
            
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetails: .constant(false))
}

