//
//  RecipesList.swift
//  MasterChefClass
//
//  Created by Alex Freitas on 05/04/21.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
        List(recipes) {
            
        }
//        List(movies) { movie in
//            NavigationLink(destination: MovieDetailView(movie: movie)) {
//                VStackMovieInfo(movie: movie)
//            }
//        }
//        chef: chefsData[0], recipe: chefsData[0].recipe[0]
    }
}

struct RecipesList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
