//
//  ContentView.swift
//  Fructus
//
//  Created by Rakibur Khan on 26/Aug/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    @State private var isShowingSettings: Bool = false
    
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
            .navigationTitle(Text("Fruits", comment: "Navigation  Title: Fruit"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation {
                            isShowingSettings = true
                        }
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }//: Button
                }//: ToolBarItem
            }//: toolbar
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }//: sheet
        }//: NavigationView
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
