//
//  AdendaButtonsView.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 05/04/21.
//

import SwiftUI

struct AgendaButtonsView: View {
    @State private var days = ["Quinta", "Sexta", "Sáb", "Dom"]
    @State private var selectDay: String = "Quinta"
    var visibleEvents: [Event] {
        events.filter { event in
            event.weekDay == selectDay
        }
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(days.indices, id: \.self) { daysIndex in
                    Button(action: { selectDay = days[daysIndex] }, label: {
                        VStack {
                            Text( "\(daysIndex + 1)")
                                .foregroundColor(selectDay == days[daysIndex] ? .white : .black)
                                .bold()
                                .font(.title)
                                .padding(.bottom, 10)
                            
                            Text(days[daysIndex])
                                .foregroundColor(selectDay == days[daysIndex] ? .white : .black)
                            
                        }
                    })
                    .frame(width: 80, height: 100)
                    .background(Color(selectDay == days[daysIndex] ? #colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1) : .white ))
                    .cornerRadius(12)
                    .overlay( RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1)), lineWidth: 1) )
                
                }
            }
            .frame(height: 110)
            .padding(.leading)
        }
        
        ScrollView {
            ForEach(visibleEvents, id: \.self) { event in
                VStack(alignment: .leading, spacing: 6.0){
                    
                    Text(event.title)
                        .font(.title2)
                        .bold()
                    
                    VStack(alignment: .leading, spacing: 9.0) {
                        
                        Text(event.chef)
                            .font(.title3)
                            .bold()
                        
                        
                        Text(event.recipe)
                            .font(.subheadline)
                            
        
                        Text(Image(systemName: "mappin")).foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1))) + Text(event.local).font(.body)
                    }
                    .frame(width: 320, height: 90, alignment: .leading)
                    .overlay(VStack{Divider().background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).offset(x: 0, y: 45)})
                    
                    Text(Image(systemName: "clock")).foregroundColor(Color(#colorLiteral(red: 0.9009365439, green: 0.1880537868, blue: 0.243170321, alpha: 1))) + Text(event.hour)
                        .font(.title3)
                        .bold()
                    
                    
                }
                .padding(.leading, 20.0)
                .frame(width: 360, height: 190, alignment: .leading)
                .background(Color(#colorLiteral(red: 0.9018915296, green: 0.9019998312, blue: 0.9018546343, alpha: 1)))
                .cornerRadius(24)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
            }
        }
    }
}

struct AgendaButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaButtonsView()
    }
}
