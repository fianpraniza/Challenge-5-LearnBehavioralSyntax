//
//  HomeView.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 28/08/26.
//

import SwiftUI

struct HomeView: View {
    @State var practiceStatus = "Ready"
    
    var body: some View {
        VStack {
            Text("Tiempo")
                .padding()
            
            /// block kode 'learn behavior tap button -> teks berubah'
            Text(practiceStatus)
            Button {
                practiceStatus = "Practice Started" /// ini adalah tempat untuk mengubah state, ketika button ditekan
            } label: {
                Text("Tap to Start")
            }
            /// -------------------------------------

        }
    }
}

#Preview {
    HomeView()
}
