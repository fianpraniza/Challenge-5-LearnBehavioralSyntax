//
//  HomeView.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 28/08/26.
//

import SwiftUI

enum PracticeStatus {
    case ready
    case practiceStarted
    case paused
    case finished
    
    /// translator teks tampilan untuk title
    var title: String { /// computed property
        switch self {
        case .ready:
            return "Ready"
        case .practiceStarted:
            return "Practice Started"
        case .paused:
            return "Paused"
        case .finished:
            return "Finished"
        }
    }
    
    /// translator teks tampilan untuk title button
    var buttonTitle: String { /// computed property
        switch self {
        case .ready:
            return "Tap to Start"
        case .practiceStarted:
            return "Pause"
        case .paused:
            return "Resume"
        case .finished:
            return "Done"
        }
    }
}

struct HomeView: View {
    @State var practiceStatus: PracticeStatus = .ready
    
    var body: some View {
        VStack {
            Text("TIEMPO")
                .font(.system(size: 25))
                .padding()
            
            Text(practiceStatus.title)
            Button { /// block action button
                switch practiceStatus {
                case .ready:
                    practiceStatus = .practiceStarted
                case .practiceStarted:
                    practiceStatus = .paused
                case .paused:
                    practiceStatus = .practiceStarted
                case .finished:
                    practiceStatus = .ready
                }
            } label: { /// block label button
                Text(practiceStatus.buttonTitle)
            }
            if practiceStatus == .practiceStarted || practiceStatus == .paused {
                Button {
                    practiceStatus = .finished
                } label: {
                    Text("Stop")
                }

            }

        }
    }
}

#Preview {
    HomeView()
}
