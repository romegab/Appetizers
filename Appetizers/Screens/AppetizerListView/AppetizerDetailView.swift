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
                    NutritionView(title: "Calories", amount: "\(appetizer.calories)")
                    NutritionView(title: "Carbs", amount: "\(appetizer.carbs) g")
                    NutritionView(title: "Protein", amount: "\(appetizer.protein) g")
                }
            }
            .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
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
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetails: .constant(false))
}


struct NutritionView: View {
    
    let title: String
    let amount: String
    
    var body: some View {
        VStack(spacing: 5.0) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(amount)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
