//
//  DrinkyDetailView.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import SwiftUI

struct DrinkyDetailsView: View {
    
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
            Text(drink.longDescription)
                .font(.system(size: 25, weight: .regular))
            Spacer()
        }.padding(.horizontal)
    }
}

struct DrinkyViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkyDetailsView(drink: Drink(name: "Brew Coffee", image: "brewCoffee", shortDescription: "Brew Coffee", longDescription: "Indulge in the aromatic journey of a meticulously brewed cup of coffee. From the moment the fragrant beans meet hot water, a dance of flavors ensues, unfolding rich notes of earthiness, caramel, and subtle fruitiness.",
                                       ingredients: ["1 cup (113 grams) whole coffee beans",                             "4 cups (907 grams) water"]))
        
    }
}
