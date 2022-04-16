//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source", comment: "Text: Content Source")
                
                Spacer()
                
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Text("Wikipedia", comment: "Link: Wikipedia")
                }
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#if DEBUG
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
    }
}
#endif
