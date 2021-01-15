//
//  ContentView.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 06.01.2021.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {
        HStack {
            let font = viewModel.cards.count > 4 ? Font.title : Font.largeTitle
            ForEach(viewModel.cards.shuffled()) {
                card in
                CardView(card: card, font: font).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }.foregroundColor(Color.orange)
                .padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var font: Font = Font.largeTitle

    var body: some View {
        if card.isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content).font(font)
            }.aspectRatio(2 / 3, contentMode: .fit)
        } else {
            RoundedRectangle(cornerRadius: 10).fill(Color.orange)
                    .aspectRatio(2 / 3, contentMode: .fit)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
