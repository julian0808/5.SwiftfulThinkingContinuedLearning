//
//  LongPressGestureBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 20/02/24.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete: Bool = false
    @State var isSucess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(isSucess ? Color.green : Color.blue )
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack {
                Text("CLICK HERE")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.9, maximumDistance: 50) { (isPressing) in
                        // Start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete = true
                            }
                        }else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSucess {
                                    withAnimation(.easeOut) {
                                        isComplete = false
                                    }
                                }
                        }
                    }
            } perform: {
                // at the min duration
                withAnimation(.easeOut) {
                    isSucess = true
                }
            }
            
            
            Text("RESET")
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    isComplete = false
                    isSucess = false
                }
        }
        
    }
    
    
    
    
    
    
    
    //        Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
    //            .padding()
    //            .padding(.horizontal)
    //            .background(isComplete ? Color.green : Color.gray)
    //            .cornerRadius(10)
    ////            .onTapGesture {
    ////                isComplete.toggle()
    ////            }
    //            .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 1) {
    //                isComplete.toggle()
    //            }
}
}

#Preview {
    LongPressGestureBootcamp()
}
