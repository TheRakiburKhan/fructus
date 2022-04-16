//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rakibur Khan on 16/Apr/22.
//  Copyright © 2022 www.therakiburkhan.me. All rights reserved.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: Properties
    var name: Text
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: URL? = nil
    
    //MARK: Body
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack{
                name
                    .foregroundColor(.gray)
                
                Spacer()
                
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                    Link(destination: linkDestination) {
                        Text(linkLabel)
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }//: HStack
        }//: VStack
    }
}

#if DEBUG
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: Text("Developer", comment: "Text: Developer"), content: "Rakibur Khan")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: Text("Website", comment: "Text: Website"), linkLabel: "Portfolio", linkDestination: URL(string: "http://therakiburkhan.me"))
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
#endif
