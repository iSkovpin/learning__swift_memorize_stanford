//
//  ContentView.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 06.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {index in CardView(isFaceUp: true)}
        }
        .foregroundColor(Color.orange)
        .padding()
        
        
        
        
        //        return ZStack(content: {
        //            RoundedRectangle(cornerRadius: 10).fill(Color.white)
        //            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
        //            Text("🧠").font(Font.largeTitle)
        //        }).foregroundColor(Color.orange).padding()
        //        return Text("🧠")
        //            .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("🧠").font(Font.largeTitle)
            }
        } else {
            RoundedRectangle(cornerRadius: 10).fill(Color.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
