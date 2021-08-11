//
//  GameView.swift
//  TicTacToeOnline
//
//  Created by ramil on 11.08.2021.
//

import SwiftUI

struct GameView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("Waiting for the player")
            Button(action: {
                
            }, label: {
                GameButton(title: "Quit", backgroundColor: Color(.systemRed))
            })
            Text("Loading view...")
            Spacer()
            
            VStack {
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
