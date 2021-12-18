//
//  Fruit.swift
//  Fructus
//
//  Created by Rakibur Khan on 19/Dec/21.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors:[Color]
    let description: String
    let nutrition: [String]
}
