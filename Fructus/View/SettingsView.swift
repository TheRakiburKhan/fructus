//
//  SettingsView.swift
//  Fructus
//
//  Created by Rakibur Khan on 27/Dec/21.
//  Copyright © 2021 www.therakiburkhan.me. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    //MARK: Properties
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @State private var onBoarding: Bool = false
    
    //MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: Section 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium dietary fiber, vitamins, and much more.", comment: "Text: Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: Text("Fructus", comment: "Group Title: Fructus"), labelImage: Image(systemName: "info.circle"))
                    }//: GroupBox
                    
                    //MARK: Section 2
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again", comment: "Text: If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $onBoarding) {
                            if onBoarding {
                                Text("Restarted", comment: "Button: Restarted")
                                    .fontWeight(.bold)
                                    .textCase(.uppercase)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart", comment: "Button: Restart")
                                    .fontWeight(.bold)
                                    .textCase(.uppercase)
                                    .foregroundColor(.secondary)
                            }
                        }//: Toggle
                        .padding()
                        .background(
                            Color(uiColor: .tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: Text("Customization", comment: "Group Title: Customization"), labelImage: Image(systemName: "paintbrush"))
                    }//: GroupBox
                    
                    
                    //MARK: Section 3
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        SettingsRowView(name: Text("Developer", comment: "Text: Developer"), content: "Rakibur Khan")
                        SettingsRowView(name: Text("Designer", comment: "Text: Designer"), content: "Robert Petras")
                        SettingsRowView(name: Text("Compatibility", comment: "Text: Compatibility"), content: "iOS 15")
                        SettingsRowView(name: Text("Website", comment: "Text: Website"), linkLabel: "Portfolio", linkDestination: URL(string: "http://therakiburkhan.me"))
                        SettingsRowView(name: Text("Twitter", comment: "Text: Twitter"), linkLabel: "@TheRakiburKhan", linkDestination: URL(string: "https://twitter.com/TheRakiburKhan)"))
                        SettingsRowView(name: Text("SwiftUI", comment: "Text: SwiftUI"), content: "3.0")
                        SettingsRowView(name: Text("Version", comment: "Text: Version"), content: Bundle.main.appVersionLong)
                    } label: {
                        SettingsLabelView(labelText: Text("Application", comment: "Group Title: Application"), labelImage: Image(systemName: "apps.iphone"))
                    }//: GroupBox
                    
                }//: VStack
                .onDisappear {
                    isOnboarding = onBoarding
                }
                .navigationTitle(Text("Settings", comment: "Navigation Title: Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            withAnimation {
                                isOnboarding = onBoarding
                                dismiss()
                            }
                        } label: {
                            Image(systemName: "xmark")
                        }//: Button
                    }//: ToolbarItem
                }//: toolbar
                .padding()
            }//: ScrollView
        }//: NavigationView
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
