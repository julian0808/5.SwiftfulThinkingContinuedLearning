//
//  4.RotationGestureBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 21/02/24.
//

import SwiftUI

struct __RotationGestureBootcamp: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged {value in
                        angle = value
                    }
                    .onEnded {value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    }
            )
    }
}

#Preview {
    __RotationGestureBootcamp()
}
