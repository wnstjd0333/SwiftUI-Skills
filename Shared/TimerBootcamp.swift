//
//  TimerBootcamp.swift
//  SwiftUI-Skills
//
//  Created by 金峻聖 on 2022/10/30.
//

import SwiftUI

struct TimerBootcamp: View {
    
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    // Current Time
    //    @State var currentDate = Date()

    //    var dateFormatter: DateFormatter {
    //        let formatter = DateFormatter()
    //        formatter.dateStyle = .medium
    //        formatter.timeStyle = .medium
    //        return formatter
    //    }
    
    // Countdown
    //    @State var count = 10
    //    @State var finishedText: String? = nil
    
    // Countdown to date
    //    @State var timeRemaining = ""
    //    let futureDate = Calendar.current.date(bySetting: .day, value: 1, of: Date()) ?? Date()
    //
    //    func updateTimeRemaining() {
    //        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: futureDate)
    //        let hour = remaining.hour ?? 0
    //        let minute = remaining.minute ?? 0
    //        let second = remaining.second ?? 0
    //        timeRemaining = "\(hour):\(minute)\(second)"
    //    }
    
    // Animation counter
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.blue, .green]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
            .ignoresSafeArea()
            
            TabView(selection: $count) {
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
            }
            .frame(height: 200)
            .tabViewStyle(PageTabViewStyle())
            
//            HStack(spacing: 15) {
//                Circle()
//                    .offset(y: count == 1 ? -20 : 0)
//                Circle()
//                    .offset(y: count == 2 ? -20 : 0)
//                Circle()
//                    .offset(y: count == 3 ? -20 : 0)
//            }
//            .frame(width: 200)
//            .foregroundColor(.white)
            
//            Text(timeRemaining)
//                .font(.system(size: 100, weight: .semibold, design: .rounded))
//                .foregroundColor(.white)
//                .lineLimit(1)
//                .minimumScaleFactor(0.1)
        }
        .onReceive(timer) { value in
            withAnimation(.default) {
                count = count == 5 ? 0 : count + 1
            }
//            updateTimeRemaining()
            
//            if count <= 1 {
//                finishedText = "Wow!"
//            } else {
//                count -= 1
//            }
        }
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}
