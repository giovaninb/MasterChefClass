//
//  WalkthroughView.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

import SwiftUI

struct WalkthroughView: View {
    @State private var selection = 0
    @Binding  var isWalkthroughViewShowing: Bool
    @Binding var percent: Float
    
    var body: some View {
        ZStack {
            AnimatedBackgroundView(percent: $percent)
            VStack {
                PageTabOnboardingView(selection: $selection, percent: $percent)
                ButtonsOnboardingView(isWalkthroughViewShowing: $isWalkthroughViewShowing, selection: $selection)
            }
        }
        .transition(.move(edge: .bottom))
    }
}

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughView(isWalkthroughViewShowing: Binding.constant(true),percent: Binding.constant(50.0))
    }
}
