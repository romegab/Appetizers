//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 6.02.24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .cornerRadius(8.0)
                .frame(width: 120, height: 90)
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold )
            }
            
            Spacer()
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
