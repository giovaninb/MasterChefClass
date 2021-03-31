//
//  Recipe.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 30/03/21.
//

import Foundation
import SwiftUI

struct Recipe: Hashable, Codable {
    var idRecipe: Int
    let recipeName, description: String

    var imageRecipe: String
    private var image: Image {
        Image(imageRecipe)
    }
    
}
