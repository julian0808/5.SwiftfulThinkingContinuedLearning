//
//  7.GeomtryReaderBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 22/02/24.
//

import SwiftUI

struct __GeomtryReaderBootcamp: View {
    
    func getPercentage(geo:GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double( 1 - (currentX / maxDistance))
    }
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader {geometry in
                        RoundedRectangle(cornerRadius: 20.0)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 40),
                                axis: (x: 0.0, y: 1.0, z: 0.0),
                                anchor: .center,
                                anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                                perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 300, height: 250, alignment: .center)
                    .padding()
                    
                }
            }
        })
//        GeometryReader {geomery in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: geomery.size.width * 0.6666)
//                
//                Rectangle().fill(Color.blue)
//            }
//            .ignoresSafeArea()
//        }
    }
}

#Preview {
    __GeomtryReaderBootcamp()
}
