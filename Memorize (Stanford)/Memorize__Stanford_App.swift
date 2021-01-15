//
//  Memorize__Stanford_App.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 06.01.2021.
//

import SwiftUI

@main
struct Memorize__Stanford_App: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
