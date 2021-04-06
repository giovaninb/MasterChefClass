//
//  AgendaView.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 30/03/21.
//

import SwiftUI

struct AgendaView: View {
    
    var body: some View {
            VStack {
                VStack(alignment: .leading, spacing: 7.0) {
                    Text("MasterChef Class")
                        .font(.title2)
                        .bold()
                    
                    Text(Image(systemName: "calendar")).foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1))) + Text("  01, 02, 03 e 04 de Abril de 2021")
                        .font(.subheadline)
                    
                    Text(Image(systemName: "clock")).foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)))  + Text("  19h às 22h")
                        .font(.subheadline)
                    
                    Text(Image(systemName: "mappin")).foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)))  + Text("  Clube Hípico de Santo Amaro") + Text("\n      Rua Visconde de Taunay, 88 - Vila Cruzeiro - São Paulo").font(.custom("San-Francisco", size: 14.0))
                        .font(.subheadline)
                    
                }
                .padding(.leading, 20.0)
                .frame(width: 390, height: 190, alignment: .leading)
                .background(Color(#colorLiteral(red: 0.9018915296, green: 0.9019998312, blue: 0.9018546343, alpha: 1)))
                .multilineTextAlignment(.leading)
                
                AgendaButtonsView()
        
        }
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
