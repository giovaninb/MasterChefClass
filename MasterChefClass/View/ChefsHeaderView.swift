//
//  ChefsHeaderView.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 05/04/21.
//

import SwiftUI

struct ChefsHeaderView: View {
    var chef: Chef
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Rectangle()
                .fill(Color.black)
                .frame(height: 100)
                .opacity(0.10)
            HStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                    Image("chef bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    chef.imageB
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 120)
                }
                .padding(.horizontal, 10.0)
                Text(chef.name)
                    .font(.title)
                    .foregroundColor(Color.red)
            }
        }
    }
}

struct ChefsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ChefsHeaderView(chef: chefsData[0])
    }
}
