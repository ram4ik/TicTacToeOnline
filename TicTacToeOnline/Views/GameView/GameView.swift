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
        GeometryReader { geometry in
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
                                    .foregroundColor(.blue.opacity(0.7))
                                    .frame(width: geometry.size.width / 3 - 15, height: geometry.size.width / 3 - 15)
                                Image(systemName: "applelogo")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                            }
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
