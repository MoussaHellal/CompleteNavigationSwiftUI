//
//  DrinkyViewModel.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation


class DrinkViewModel: ObservableObject {
    
    @Published var drinks: [Drink]
    
    init() {
        self.drinks = [Drink(name: "Cappucino",
                             image: "cappucino",
                             shortDescription: "Creamy, espresso-based coffee beverage.",
                             longDescription: "Delve into the world of indulgence with a cup of cappuccino. Velvety espresso harmonizes with steamed milk, crowned by a delicate layer of  froth. This Italian classic captivates the senses, offering a perfect balance of rich flavors and creamy texture, ensuring every sip is a moment of pure bliss.",
                             ingredients: ["18g ground espresso (or 1 espresso pod)",
                                          "150ml milk"]),
                       Drink(name: "Brew coffee",
                             image: "brewCoffee",
                             shortDescription: "Rich and aromatic hot beverage.",
                             longDescription: "Indulge in the aromatic journey of a meticulously brewed cup of coffee. From the moment the fragrant beans meet hot water, a dance of flavors ensues, unfolding rich notes of earthiness, caramel, and subtle fruitiness.",
                             ingredients: ["1 cup (113 grams) whole coffee beans",
                                          "4 cups (907 grams) water"]),
                       Drink(name: "Lemonade",
                             image: "lemonade",
                             shortDescription: "Rich and aromatic hot beverage.",
                             longDescription: "Quench your thirst with the embodiment of citrus refreshment - lemonade. Vibrant and tangy, this beloved elixir combines the zesty essence of sun-kissed lemons with just the right amount of sweetness, resulting in a rejuvenating and invigorating beverage that delights the palate.",
                             ingredients: ["1 cup sugar (can reduce to 3/4 cup)",
                                           "1 cup water (for the simple syrup)",
                                           "1 cup freshly squeezed lemon juice" ,
                                           "2 to 3 cups cold water, to dilute"]),
                       Drink(name: "Mixed blueberry drinks",
                             image: "mixedDrinks",
                             shortDescription: "Flavorful blend of refreshing blueberry concoctions.",
                             longDescription: "Immerse yourself in the tantalizing world of mixed blueberry drinks, where succulent blueberries meet creativity. Experience the burst of sweetness and tangy flavors, expertly blended into refreshing concoctions, from luscious smoothies to sparkling spritzers, capturing the essence of nature's vibrant blue gems.",
                             ingredients: ["Blueberries",
                                           "Lemon",
                                           "Sprite Or Ginger ale",
                                           "Fresh mint",
                                           "and Of course; Ice 😉" ])]
    }

    
}
