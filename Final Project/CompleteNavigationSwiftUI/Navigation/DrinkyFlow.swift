//
//  DrinkyFlow.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation
import SwiftUI

class DrinkyFlow: ObservableObject {
    static let shared = DrinkyFlow()
    
    @Published var path = NavigationPath()
    @Published var selectedDrink: Drink = Drink(name: "", image: "", shortDescription: "", longDescription: "", ingredients: [])

    func clear() {
        path = .init()
    }
    
    func navigateBackToRoot() {
        path.removeLast(path.count)
    }
    
    func backToPrevious() {
        path.removeLast()
    }
    
    func navigateToDrinkyDetailView() {
        path.append(DrinkyNavigation.drinkyDetails)
    }
    
    func navigateToDrinkyIngredientsView() {
        path.append(DrinkyNavigation.drinkyIngredients)
    }

    func done() {
        path = .init()
    }
}

