//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 7.02.24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .foregroundColor(.black)
            .frame(width: 30.0, height: 30.0)
            .background(Color(.init(white: 1.0, alpha: 0.5)))
            .cornerRadius(15.0)
            .padding(EdgeInsets(top: 8.0, leading: 0.0, bottom: 0.0, trailing: 8.0))
    }
}

#Preview {
    XDismissButton()
}
