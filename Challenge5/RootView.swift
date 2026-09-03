//
//  RootView.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 28/08/26.
//

import SwiftUI

enum ActiveScreen {
    case home
    case practice
}

struct RootView: View {
    @State var activeScreen: ActiveScreen = .home
    
    var body: some View {
        switch activeScreen { /// menentukan view yang ditampilkan
        case .home:
            HomeView(
                onStartPractice: { /// perintah mengubah state
                    activeScreen = .practice
                }
            )
        case .practice:
            PracticeView()
        }
    }
}
