//
//  PracticeView.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 01/09/26.
//

import SwiftUI
import Combine

struct PracticeView: View {
    @State var elapsedSeconds: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    /// computed property - format timer
    var formattedElapsedTime: String {
        let minutes = elapsedSeconds / 60
        let seconds = elapsedSeconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    var body: some View {
        VStack {
            Text("Practice Timer")
//            Text("\(elapsedSeconds)s")
            Text(formattedElapsedTime)
        }
        .onReceive(timer) { _ in
            elapsedSeconds += 1
        }
    }
}

#Preview {
    PracticeView()
}
