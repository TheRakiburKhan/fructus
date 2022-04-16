//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(fruitsData, id:\.self.id) {fruit in
                FruitCardView(fruit: fruit)
            } //Loop
        } //TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
