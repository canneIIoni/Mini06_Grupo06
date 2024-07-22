//
//  NavigationModel.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import Foundation

enum NavigationDestination: Hashable {
    
    // SHARED
    case home // Main Menu
    case newSession // Creating New Session
    case gameLobby // Game Lobby
    
    // PLAYER ONE
    case panel // Electrical Panel
    
    // PLAYER TWO
    case nerdPC
    case directorPC
}
