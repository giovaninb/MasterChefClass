//
//  PageTabOnboardingView.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

import SwiftUI

struct PageTabOnboardingView: View {
    @Binding var selection: Int
    @Binding var percent: Float
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailsOnboarding(index: index)
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onChange(of: selection, perform: { value in
            self.percent = Float((value + 1) * (100 / tabs.count))
            
        })
    }
}

struct PageTabOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            AnimatedBackgroundView(percent: Binding.constant(50.0))
            PageTabOnboardingView(selection: Binding.constant(0), percent: Binding.constant(50.0))
        }
    }
}
