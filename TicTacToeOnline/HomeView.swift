//
//  HomeView.swift
//  TicTacToeOnline
//
//  Created by ramil on 11.08.2021.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.isGameViewPresented = true
            }, label: {
                GameButton(title: "Play", backgroundColor: Color(.systemGreen))
            })
        }
        .fullScreenCover(isPresented: $viewModel.isGameViewPresented, content: {
            GameView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
