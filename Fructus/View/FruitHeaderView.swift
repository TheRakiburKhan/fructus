//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: Properties
    @State private var isAnimatingimage: Bool = false
    var fruit: Fruit
    
    //MARK: Body
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingimage ? 1.0 : 0.6)
        }//: ZStack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingimage = true
            }
        }
    }
}

#if DEBUG
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
    }
}
#endif
