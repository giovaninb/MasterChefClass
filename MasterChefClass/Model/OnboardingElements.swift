//
//  OnboardingElements.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

import Foundation
import SwiftUI

struct OnboardingViews: Hashable, Codable {
    var idView: Int
    let title, description: String
    
    var imageNameView: String
    private var image: Image {
        Image(imageNameView)
    }
}
