//
//  FeedVew.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 30/03/21.
//

import SwiftUI

struct FeedView: View {
    
    var chefs: [Chef]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HStack(alignment: .center, spacing: 5) {
                    Image("mcc")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                }
                HStack(alignment: .center) {
                    Image("banner")
                        .resizable()
                        
                        .frame(height:150)
                }
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Text("Chefs")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.8968908191, green: 0.1890383065, blue: 0.243498534, alpha: 1)))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }

                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 4) {
                            ForEach(chefs, id: \.id) { chef in
                                NavigationLink(destination: ChefsView(chef: chef)) {
                                    ZStack(alignment: .topTrailing) {
                                        chef.image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 210, height: 220)
                                        Text(chef.name)
                                            .font(.body)
                                            .foregroundColor(.black)
                                            .bold()
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(nil)
                                            .frame(width: 85, height: 110)
                                        
                                    }
                                }
                            }
                        }
                        
                    }
                    VStack {
                        HStack {
                            Text("Receitas")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(Color(#colorLiteral(red: 0.8968908191, green: 0.1890383065, blue: 0.243498534, alpha: 1)))
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                    }
                    .padding(.bottom, 3.0)
                    // TODO Create ScrollView with Recipes
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10) {
                            ForEach(0..<5) { index in
                                // TODO Text seems an important feature for acessibility
                                VStack{
                                    Image("empanada")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 130, height: 120)
                                        .cornerRadius(30)
                                    Text("Empanada")
                                }
                            }
                        }
                        
                    }
                }
                .padding(.leading, 7.0)
                Spacer()
            
            }
            
            .navigationBarHidden(true)
            
        }
//                            .imageScale(.large)
//                                        .padding(.trailing, (geometry.size.width / 2.0) + -30) // image width = 60
                    
                
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(chefs: chefsData)
    }
}
