//
//  NerdClueView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 23/07/24.
//

import SwiftUI

struct NerdClueView: View {
    
    @Binding var showClue: Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.gray)
            VStack {
                Text("Se o número serial termina com [2] e tem a letra [A] na segunda posição, ligue os interruptores [1] e [4]  Se o número serial termina com [2] e tem a letra [A] na segunda posição, ligue os interruptores [1] e [4]  Se o número serial termina com [2] e tem a letra [A] na segunda posição, ligue os interruptores [1] e [4]")
                        .foregroundStyle(.white)
                    
                Button{
                    showClue = false
                } label: {
                    Text("dismiss")
                }.padding()
            }.padding()
        }.frame(width: 500, height: 300)
    }
}

#Preview {
    NerdClueView(showClue: .constant(true))
}
