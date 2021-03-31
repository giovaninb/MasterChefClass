//
//  ContentView.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
                FeedView(chefs: chefsData)
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Feed")
                    }.tag(1)
                ChefsView()
                    .padding()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Chefs")
                    }.tag(2)
                AgendaView()
                    .padding()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Agenda")
                    }.tag(3)
                ProfileView()
                    .padding()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }.tag(4)
        }.accentColor(Color(#colorLiteral(red: 0.8968908191, green: 0.1890383065, blue: 0.243498534, alpha: 1)))
        .onAppear() {
            UITabBar.appearance().barTintColor = #colorLiteral(red: 0.9018815756, green: 0.9020115733, blue: 0.901853323, alpha: 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
