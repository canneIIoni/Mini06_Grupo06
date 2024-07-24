//
//  LoginView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 24/07/24.
//

import SwiftUI

struct LoginView: View {

    @State var password: String = ""
    
    var body: some View {
        VStack{
            Circle().frame(width: 100, height: 100)
            
            TextField("Insert Password", text: $password).frame(width: 100)
                .textFieldStyle(.roundedBorder).foregroundStyle(.gray)
                
        }
    }
}

#Preview {
    LoginView()
}
