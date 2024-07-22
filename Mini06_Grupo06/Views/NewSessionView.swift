//
//  NewSessionView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct NewSessionView: View {
    @Binding var currentDestination: NavigationDestination?
    
    var body: some View {
        VStack {
            Text("New Session View")
            Button("Go Back to Home View") {
                currentDestination = .home
            }
        }
    }
}

#Preview {
    NewSessionView(currentDestination: .constant(.newSession))
}
