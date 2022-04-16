//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: Body
    var body: some View {
        Button {
            withAnimation {
                isOnboarding = false
            }
        } label: {
            HStack(spacing: 8) {
                Text("Start", comment: "Button: Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: Button
        .tint(.white)
    }
}

#if DEBUG
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
#endif
