//
//  HomeView.swift
//  TicTacToeOnline
//
//  Created by ramil on 11.08.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var isGameViewPresented = false
    
    var body: some View {
        VStack {
            Button(action: {
                isGameViewPresented.toggle()
            }, label: {
                Text("Play")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            })
        }
        .fullScreenCover(isPresented: $isGameViewPresented, content: {
            GameView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
