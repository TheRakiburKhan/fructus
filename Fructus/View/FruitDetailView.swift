//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: Properties
    var fruit: Fruit
    
    //MARK: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //Header
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    //Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors.last)
                    
                    //Headlines
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    //Nutrients
                    FruitNutrientsView(fruit: fruit)
                    
                    //Subheadline
                    Text("Learn more about \(fruit.title)", comment: "Text: Lear more about fruit")
                        .fontWeight(.bold)
                        .textCase(.uppercase)
                        .foregroundColor(fruit.gradientColors.last)
                    
                    //Description
                    Text(fruit.description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                    
                    //Link
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                }//: VStack
                .padding(.horizontal, 20)
                .frame(maxWidth: 648, alignment: .center)
            }//: VStack
            .navigationBarTitleDisplayMode(.inline)
        }//: ScrollView
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData.first!)
    }
}
#endif
