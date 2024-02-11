//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Ivan Stoilov on 11.02.24.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
