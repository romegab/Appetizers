//
//  APButton.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 7.02.24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260.0, height: 50.0)
            .foregroundColor(.white)
            .background(.brandPrimary)
            .cornerRadius(10.0)
        
    }
}

#Preview {
    APButton(title: "test title")
}
