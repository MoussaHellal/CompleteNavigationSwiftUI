//
//  DrinkyView.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import SwiftUI

struct DrinkyView: View {
    
    @StateObject private var viewModel = DrinkViewModel()
    @EnvironmentObject var drinkyFlow: DrinkyFlow

    var body: some View {
        NavigationStack(path: $drinkyFlow.path) {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.drinks) { drink in
                        Button {
                            //TO USE WHEN CLICKED AN ITEM
                            drinkyFlow.selectedDrink = drink
                            drinkyFlow.navigateToDrinkyDetailView()
                        } label: {
                            VStack(alignment: .leading) {
                                Image(drink.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(12)
                                Text(drink.name)
                                    .font(.system(size: 20, weight: .bold))
                                Text(drink.shortDescription)
                                    .font(.system(size: 20, weight: .regular))
                            }.padding()
                        }.buttonStyle(.plain)
                    }
                }
            }.navigationDestination(for: DrinkyNavigation.self) { destination in
                DrinkyViewFactory.setViewForDestination(destination)
            }
        }
    }
}

struct DrinkyVieww_Previews: PreviewProvider {
    static var previews: some View {
        DrinkyView()
    }
}
