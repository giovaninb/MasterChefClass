//
//  Chef.swift
//  MasterChefClass
//
//  Created by Giovani Nícolas Bettoni on 30/03/21.
//

import Foundation
import SwiftUI

struct Chef: Hashable, Codable {
    var id: Int
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var imageNoBackground: Image {
        Image(imageName + "-no-background")
    }
    
    var recipe: [Recipe]
    
    init(id: Int, name: String, imageName: String, recipe: [Recipe]) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.recipe = recipe
    }
}
