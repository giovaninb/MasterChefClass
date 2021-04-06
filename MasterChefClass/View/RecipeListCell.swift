//
//  RecipeListCell.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 31/03/21.
//

import SwiftUI

struct RecipeListCell: View {
    var recipe: Recipe
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(recipe.imageRecipe)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 160)
                .cornerRadius(20)
            Rectangle()
                .fill(Color.black)
                .frame(height: 160)
                .cornerRadius(20)
                .opacity(0.36)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Image("play")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 70)
                HStack {
                    Text(recipe.recipeName)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .padding(.leading, 20)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

struct RecipeListCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListCell(recipe: Recipe(id: 1, recipeName: "Nhoque", description: "Comida", imageRecipe: "nhoque"))
    }
}
