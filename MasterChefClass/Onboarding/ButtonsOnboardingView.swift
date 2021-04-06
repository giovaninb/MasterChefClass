//
//  ButtonsOnboardingView.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 01/04/21.
//

import SwiftUI

struct ButtonsOnboardingView: View {
    @State private var hidden: Bool = true
    @State private var hiddenVamos: Bool = true
    @State private var hiddenLogue: Bool = false
    @Binding var isWalkthroughViewShowing: Bool
    @Binding var selection: Int
    
    var body: some View {
        VStack {
            Button(action: { dismiss("Vamos Lá!") }, label: {
                Text("Vamos Lá!")
                    .fontWeight(.heavy)
                    .padding()
                    .frame(width: 220, height: 44)
                    .background(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)))
                    .cornerRadius(22)
                    .padding(.horizontal)
                    .isHidden(hiddenVamos)
            })
            
            Button(action: { dismiss("Já tem uma conta? Logue agora") }, label: {
                Text("Já tem uma conta? Acesse aqui")
                    .foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)))
                    .underline()
                    .isHidden(hiddenLogue)
            })
        }
        .foregroundColor(.white)
        .padding()
        .onChange(of: selection, perform: { value in
            withAnimation {
                if selection == 0 {
                    hiddenLogue = false
                    hiddenVamos = true
                    
                } else if selection == 2 {
                    hiddenVamos = false
                    hiddenLogue = true
                    
                } else {
                    hiddenLogue = true
                    hiddenVamos = true
                }
            }
        })
    }
    
    func dismiss(_ buttonLabel: String) {
        withAnimation {
            isWalkthroughViewShowing.toggle()
        }
    }
}

struct ButtonsOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsOnboardingView(isWalkthroughViewShowing: Binding.constant(true), selection: Binding.constant(0))
    }
}

extension View {
    
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
