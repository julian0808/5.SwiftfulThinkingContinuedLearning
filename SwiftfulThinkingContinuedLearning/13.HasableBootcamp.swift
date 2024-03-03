//
//  13.HasableBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 23/02/24.
//

import SwiftUI

struct myCustomModel: Hashable {
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        
    }
}

struct _3_HasableBootcamp: View {
    
    let data: [myCustomModel] = [
        myCustomModel(title: "ONE"),
        myCustomModel(title: "TWO"),
        myCustomModel(title: "THREE"),
        myCustomModel(title: "FOUR"),
        myCustomModel(title: "FIVE"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(data, id: \.self) { item in
                    Text(item.hashValue.description)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    _3_HasableBootcamp()
}
