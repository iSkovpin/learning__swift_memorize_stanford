//
//  EmojiMemoryGame.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 15.01.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array = ["🎃", "👻", "🧠", "🕷", "👨‍❤️‍👨"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) {pairIndex in emojis[pairIndex]}
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
