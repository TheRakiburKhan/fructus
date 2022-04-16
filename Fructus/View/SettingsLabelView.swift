//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Rakibur Khan on 16/Apr/22.
//  Copyright © 2022 www.therakiburkhan.me. All rights reserved.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: Properties
    var labelText: Text
    var labelImage: Image
    
    //MARK: Body
    var body: some View {
        HStack {
            labelText
                .fontWeight(.bold)
                .textCase(.uppercase)
            
            Spacer()
            
            labelImage
        }//: HStack
    }
}

#if DEBUG
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: Text("Fructus"), labelImage: Image(systemName: "info.circle"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
