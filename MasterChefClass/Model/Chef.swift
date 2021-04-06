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
    
    private var imageBName: String
    var imageB: Image {
        Image(imageBName)
    }
    var recipe: [Recipe]
}
