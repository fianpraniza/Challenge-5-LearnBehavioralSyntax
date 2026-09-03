//
//  Challenge5App.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 26/08/26.
//

/// file ini adalah entry point sebuah app untuk dieksekusi

import SwiftUI

@main /// penanda bahwa swift mulai program dari struct @main ini (entry point)
struct Challenge5App: App { /// struct ini mendeskripsikan konfigurasi awal app ('ketika app dibuka, scene apa yang harus dibuat')
    var body: some Scene {
        WindowGroup { /// windowGroup ini merupakan container untuk tampilan utama app
            RootView()
        }
    }
}
