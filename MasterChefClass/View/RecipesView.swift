//
//  RecipesView.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 31/03/21.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack {
            SearchBarView(text: .constant(""))
                .padding(.bottom, 10)
                .padding(.horizontal, 6)
            ChefsHeaderView(chef: chefsData[0])
            // aqui vai a list
            RecipeListCell(chef: chefsData[0], recipe: chefsData[0].recipe[0])
        }
        .padding(.all, 0)
        .navigationBarTitle(Text("Receitas"), displayMode: .inline)
        .navigationBarBackButtonHidden(false)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
