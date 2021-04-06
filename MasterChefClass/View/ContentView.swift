//
//  ContentView.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 29/03/21.
//

import SwiftUI

enum Tab {
    case feed
    case chefs
    case agenda
    case profile
}

struct ContentView: View {
    @State var selection: Tab = .feed
    @AppStorage("WalkthroughView") var isWalkthroughViewShowing = true
    @State private var percent: Float = 50.0
    
    var body: some View {
        
            if isWalkthroughViewShowing {
                WalkthroughView(isWalkthroughViewShowing: $isWalkthroughViewShowing, percent: $percent)

            } else {
                TabView {
                    FeedView(chefs: chefsData)
                        .tabItem {
                            Image(systemName: "square.grid.2x2")
                            Text("Feed")
                        }.tag(1)
                    ChefsView(chef: chefsData[0])
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
