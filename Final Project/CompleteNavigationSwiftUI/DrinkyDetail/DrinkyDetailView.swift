//
//  DrinkyDetailView.swift
//  CompleteNavigationSwiftUI
//
//  Created by Moussa on 25/6/2023.
//

import SwiftUI

struct DrinkyDetailsView: View {
    
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
            Text(drinkyFlow.selectedDrink.longDescription)
                .font(.system(size: 25, weight: .regular))
            Spacer()
          
            Button {
                drinkyFlow.navigateToDrinkyIngredientsView()
            } label: {
                HStack {
                    Image(systemName: "chart.bar.doc.horizontal.fill")
                    Text("Ingredients")
                        .font(.title2.bold())
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            
        }.padding(.horizontal)
    }
}
