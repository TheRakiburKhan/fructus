//
//  ContentView.swift
//  Fructus
//
//  Created by Rakibur Khan on 26/Aug/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }//: NavigationLink
                }//: Loop
            }//: List
            .navigationTitle("Fruits")
        }//: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
