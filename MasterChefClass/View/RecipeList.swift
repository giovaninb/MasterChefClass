//
//  RecipesList.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 05/04/21.
//

import SwiftUI

struct RecipeList: View {
    let recipe: [Recipe]
    
    var body: some View {
        List(recipe) { recipe in
            RecipeListCell(recipe: recipe)
        }
    }
}

struct RecipesList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipe: [
            Recipe(id: 1,
                   recipeName: "Nhoque",
                   description: "Comida",
                   imageRecipe: "nhoque"),
            Recipe(id: 2,
                   recipeName: "Empanada",
                   description: "Petisco",
                   imageRecipe: "empanada")
        ]
        )
    }
}
