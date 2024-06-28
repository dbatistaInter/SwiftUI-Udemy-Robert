//
//  FruitModel.swift
//  Fructus
//
//  Created by David Eduardo Batista on 28/06/24.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
