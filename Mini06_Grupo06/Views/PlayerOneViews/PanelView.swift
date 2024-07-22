//
//  PanelView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct PanelView: View {
    @Binding var currentDestination: NavigationDestination?
    
    var body: some View {
        VStack {
            Text("Panel View")
            Button("Go Back to Home View") {
                currentDestination = .home
            }
        }
    }
}

#Preview {
    PanelView(currentDestination: .constant(.panel))
}
