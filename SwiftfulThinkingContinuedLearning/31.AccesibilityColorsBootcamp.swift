//
//  31.AccesibilityColorsBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 2/03/24.
//

import SwiftUI

struct _1_AccesibilityColorsBootcamp: View {
    
    @Environment(\.accessibilityReduceTransparency) var ReduceTransparency
    @Environment(\.colorSchemeContrast) var colorSchemeContrast
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    @Environment(\.accessibilityInvertColors) var invertColors
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Button("Button 1") {
                    
                }
                .foregroundColor(colorSchemeContrast == .increased ? .white : .primary )
                .buttonStyle(.borderedProminent)
                
                Button("Button 2") {
                    
                }
                .foregroundColor(.primary)
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                Button("Button 3") {
                    
                }
                .foregroundColor(.white)
                .foregroundColor(.primary)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Button 4") {
                    
                }
                .foregroundColor(differentiateWithoutColor ? .white : .green)
                .foregroundColor(.primary)
                .buttonStyle(.borderedProminent)
                .tint(differentiateWithoutColor ? .black : .purple)
            }
            .font(.largeTitle)
            //.navigationTitle("Hi")
            .frame(maxWidth: .infinity ,maxHeight: .infinity)
            .ignoresSafeArea()
            //.background(ReduceTransparency ? Color.black : .black.opacity(0.5))
        }
    }
}

#Preview {
    _1_AccesibilityColorsBootcamp()
}
