//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: Body
    var body: some View {
        GroupBox {
            DisclosureGroup {
                ForEach(nutrients.indices, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            
                            Text(nutrients[item])
                        }//: Group
                        .foregroundColor(fruit.gradientColors.last)
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HStack
                }//: Loop
            } label: {
                Text("Nutritional value per \(Measurement(value: 100, unit: UnitMass.grams), format: .measurement(width: .abbreviated))", comment: "Text: Nutritional value per 100 units of a fruit")
            }//: DisclosureGroup
            
        }//: GroupBox
    }
}

#if DEBUG
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
    }
}
#endif
