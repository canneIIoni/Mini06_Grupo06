//
//  ContentView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentDestination: NavigationDestination? = .home

    var body: some View {
        VStack {
            switch currentDestination {
            case .home:
                HomeView(currentDestination: $currentDestination)
            case .newSession:
                NewSessionView(currentDestination: $currentDestination)
            case .gameLobby:
                GameLobbyView(currentDestination: $currentDestination)
            case .panel:
                PanelView(currentDestination: $currentDestination)
            case .nerdPC:
                NerdPCView(currentDestination: $currentDestination)
            case .directorPC:
                DirectorPCView(currentDestination: $currentDestination)
            case .none:
                HomeView(currentDestination: $currentDestination) // Default to home if nil
            }
            
        }.animation(.easeInOut(duration: 0.5), value: currentDestination)
    }
}

#Preview {
    ContentView()
}
