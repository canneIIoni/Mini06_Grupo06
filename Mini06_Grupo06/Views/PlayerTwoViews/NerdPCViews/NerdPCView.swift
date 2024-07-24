//
//  NerdPCView.swift
//  Mini06_Grupo06
//
//  Created by Luca on 22/07/24.
//

import SwiftUI

struct NerdPCView: View {
    @Binding var currentDestination: NavigationDestination?
    @State var showClue: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                            .padding()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                            .padding()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                            .padding()
                    }
                    Spacer()
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                            .padding()
                        Button {
                            // Add button action here
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 60)
                                .padding()
                        }
                        Button {
                            // Add button action here
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 60)
                                .padding()
                        }
                    }
                }
                .padding()
                Spacer()
            }
            VStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 75)
                        .foregroundStyle(.gray)
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                        Spacer()
                        Button {
                            // Add button action here
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 60)
                        }
                        Spacer()
                        Button {
                            withAnimation(.easeInOut) {
                                showClue = true
                            }
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 60)
                        }
                        Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 60, height: 60)
                        Spacer()
                    }
                    .frame(width: 350)
                }
            }
            if showClue {
                Color.black.opacity(0.7)
                    .ignoresSafeArea()
                    .transition(.opacity)
                    .animation(.easeInOut, value: showClue)
                NerdClueView(showClue: $showClue)
                    .transition(.scale)
                    .animation(.easeInOut, value: showClue)
            }
        }
    }
}

#Preview {
    NerdPCView(currentDestination: .constant(.nerdPC))
}
