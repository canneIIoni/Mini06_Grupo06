//
//  HomeView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var currentDestination: NavigationDestination?

    var body: some View {
        VStack {
            Text("Home View")
            Button("Go to Detail View") {
                currentDestination = .nerdPC
            }
        }
    }
}

#Preview {
    HomeView(currentDestination: .constant(.home))
}
