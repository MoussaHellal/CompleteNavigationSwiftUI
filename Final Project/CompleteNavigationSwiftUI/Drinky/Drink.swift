//
//  Drink.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation

struct Drink: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    let shortDescription: String
    let longDescription: String
    let ingredients: [String]
}

