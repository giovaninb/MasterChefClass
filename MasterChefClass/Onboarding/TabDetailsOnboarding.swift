//
//  TabDetailsOnboarding.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

import SwiftUI

struct TabDetailsOnboarding: View {
    let index: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(tabs[index].staticImage)
                .resizable()
                .frame(width: 140, height: 100)
                .padding(.bottom, 30)
                        
            Image(tabs[index].chefsImage)
                .resizable()
                .frame(width: 340, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 50)
            
            Text(tabs[index].title)
                .font(.title3)
                .foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)))
                .bold()
       
            Text(tabs[index].text)
                .font(.subheadline)
                .padding(.horizontal, 220)
                .multilineTextAlignment(.center)
        }
        .padding(.bottom, 60)
    }
}

struct TabDetailsOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            AnimatedBackgroundView(percent: Binding.constant(50.0))
            TabDetailsOnboarding(index: 0)
        }
    }
}
