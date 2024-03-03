//
//  8.MultipleSheetsBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 22/02/24.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - use a biding
// 2 -  use multiple .sheets
// 3 - use $item

struct __MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel? = nil

    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") {
                selectedModel = RandomModel(title: "ONE")
            }
            
            Button("Button 2") {
                selectedModel = RandomModel(title: "TWO")
            }
        }
        .sheet(item: $selectedModel) { model  in
           NextScreen(selectedModel: model)
        }
    }
}

struct NextScreen: View {
    
   let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}


#Preview {
    __MultipleSheetsBootcamp()
}
