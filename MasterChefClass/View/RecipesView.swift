//
//  RecipesView.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 31/03/21.
//

import SwiftUI

struct RecipesView: View {
    let chef: Chef
    
    var body: some View {
        VStack {
            SearchBarView(text: .constant(""))
                .padding(.bottom, 10)
                .padding(.horizontal, 6)
            ChefsHeaderView(chef: chef)
            RecipeList(recipe: chef.recipe)
        }
        .padding(.all, 0)
        .navigationBarTitle(Text("Receitas"), displayMode: .inline)
        .navigationBarBackButtonHidden(false)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(chef: Chef(id: 1, name: "Paola", imageName: "paola", recipe: [
            Recipe(id: 1,
                   recipeName: "A",
                   description: "b",
                   imageRecipe: "a"),
            Recipe(id: 2,
                   recipeName: "fff",
                   description: "d",
                   imageRecipe: "ff")
        ]))
    }
}
