//
//  DirectorPCView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct DirectorPCView: View {
    @Binding var currentDestination: NavigationDestination?
    
    var body: some View {
        VStack {
            Text("Director PC View")
            Button("Go Back to Home View") {
                currentDestination = .home
            }
        }
    }
}

#Preview {
    DirectorPCView(currentDestination: .constant(.directorPC))
}
