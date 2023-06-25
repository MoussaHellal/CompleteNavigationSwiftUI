//
//  DrinkyIngredientView.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import Foundation
import SwiftUI

struct DrinkyIngedientsView: View {
    
    @EnvironmentObject var drinkyFlow: DrinkyFlow

    var body: some View {
        VStack(alignment: .leading) {
            Image(drinkyFlow.selectedDrink.image)
                .resizable()
                .frame(maxWidth: 400, maxHeight: 300)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .padding(.bottom)
            Text(drinkyFlow.selectedDrink.name)
                .font(.largeTitle.bold())
                .padding(.bottom)
            
            Text("Ingredients")
                .font(.title2.bold())
                .padding(.bottom)
            
            ForEach(drinkyFlow.selectedDrink.ingredients, id: \.self) { ingredient in
                Text("🍹" + ingredient)
                    .font(.system(size: 23, weight: .regular))
                    .padding(.vertical, 5)
            }
            
            Spacer()
            
            Button {
                drinkyFlow.navigateBackToRoot()
            } label: {
                HStack {
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                    Text("Back Home")
                        .font(.title2.bold())
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
           
            Spacer()
        }.padding(.horizontal)
    }
}
