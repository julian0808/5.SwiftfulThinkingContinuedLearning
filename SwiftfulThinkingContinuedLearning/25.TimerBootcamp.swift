//
//  25.TimerBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Julian Mesa on 27/02/24.
//

import SwiftUI

struct _5_TimerBootcamp: View {
    
    let timer = Timer.publish(every: 3.0,  on: .main , in: .common).autoconnect()
    
    //Current Time
    /*
     @State var currentDate: Date = Date()
     var dateFormatter: DateFormatter {
     let formatter = DateFormatter()
     //formatter.dateStyle = .medium
     formatter.timeStyle = .full
     return formatter
     }
     */
    
    // Countdown
    /*
     @State var count: Int = 10
     @State var finishedText: String? = nil
     */
    
    // Countdown to date
    /*
     @State var timeRemaining: String = ""
     let futureDate: Date = Calendar.current.date(byAdding: .hour , value: 1, to: Date()) ?? Date()
     
     func updateTimeRemaining() {
     let remaining = Calendar.current.dateComponents([.minute, .second], from: Date() , to: futureDate)
     let hour = remaining.hour ?? 0
     let minute = remaining.minute ?? 0
     let second = remaining.second ?? 0
     timeRemaining = "\(minute) minutes,:\(second) seconds"
     }
     */
    
    // Animation counter
    @State var count: Int = 1
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.blue, Color.black]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            
            TabView(selection: $count,
                    content:  {
                Rectangle()
                    .foregroundColor(.red)
                    .tag(1)
                Rectangle()
                    .foregroundColor(.blue)
                    .tag(2)
                Rectangle()
                    .foregroundColor(.green)
                    .tag(3)
                Rectangle()
                    .foregroundColor(.orange)
                    .tag(4)
                Rectangle()
                    .foregroundColor(.pink)
                    .tag(5)
            })
            .frame(height: 200)
            .tabViewStyle(PageTabViewStyle())
            
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.default) {
                count = count == 5 ? 1 : count + 1
            }
            
        })
    }
}

#Preview {
    _5_TimerBootcamp()
}
