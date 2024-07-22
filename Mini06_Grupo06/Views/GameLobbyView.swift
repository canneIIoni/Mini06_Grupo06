//
//  GameLobbyView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct GameLobbyView: View {
    @Binding var currentDestination: NavigationDestination?
    
    var body: some View {
        VStack {
            Text("Game Lobby View")
            Button("Go Back to Home View") {
                currentDestination = .home
            }
        }
    }
}

#Preview {
    GameLobbyView(currentDestination: .constant(.gameLobby))
}
