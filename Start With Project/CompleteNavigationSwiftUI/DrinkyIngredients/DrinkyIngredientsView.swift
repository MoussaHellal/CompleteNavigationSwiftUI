//
//  DrinkyIngredientView.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation
import SwiftUI

struct DrinkyIngedientsView: View {
    
    @State var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(drink.image)
                .resizable()
                .frame(maxWidth: 400, maxHeight: 300)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .padding(.bottom)
            Text(drink.name)
                .font(.largeTitle.bold())
                .padding(.bottom)
            
            Text("Ingredients")
                .font(.title2.bold())
                .padding(.bottom)
            
            ForEach(drink.ingredients, id: \.self) { ingredient in
                Text("🍹" + ingredient)
                    .font(.system(size: 23, weight: .regular))
                    .padding(.vertical, 5)
            }
           
            Spacer()
        }.padding(.horizontal)
    }
}

struct DrinkyIngedientsViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkyIngedientsView(drink: Drink(name: "Brew Coffee", image: "brewCoffee", shortDescription: "Brew Coffee", longDescription: "Indulge in the aromatic journey of a meticulously brewed cup of coffee. From the moment the fragrant beans meet hot water, a dance of flavors ensues, unfolding rich notes of earthiness, caramel, and subtle fruitiness.",
                                          ingredients: ["1 cup (113 grams) whole coffee beans",
                                                       "4 cups (907 grams) water"]))
        
    }
}
