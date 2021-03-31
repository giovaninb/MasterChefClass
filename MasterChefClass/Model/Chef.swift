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
    var name, imageName: String
    
    private var image: Image {
        Image(imageName)
    }
    var recipe: [Recipe]
}
