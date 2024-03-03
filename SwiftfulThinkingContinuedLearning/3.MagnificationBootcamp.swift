//
//  3.MagnificationBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 21/02/24.
//

import SwiftUI

struct __MagnificationBootcamp: View {
    
    
    @State var currenAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipse")
            }
            .padding(.horizontal)
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + currenAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged {value in
                            currenAmount = value - 1
                        }
                        .onEnded {value in
                            withAnimation(.spring()) {
                                currenAmount = 0
                            }
                            
                        }
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo.!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
//        Text("Hello, World!")
//            .font(.title)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1 + currenAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged { value in
//                        currenAmount = value - 1
//                    }
//                    .onEnded { value in
//                        lastAmount += currenAmount
//                        currenAmount = 0
//                    }
//            )
    }
}

#Preview {
    __MagnificationBootcamp()
}
