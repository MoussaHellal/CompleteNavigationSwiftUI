//
//  DrinkyViewFactory.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation
import SwiftUI

class DrinkyViewFactory {
    
    static func setViewForDestination(_ destination: DrinkyNavigation) -> AnyView {
        
        switch destination {
        case .drinkyDetails:
            return AnyView(DrinkyDetailsView())
        case .drinkyIngredients:
            return AnyView(DrinkyIngedientsView())
        }
    }
}
