//
//  Constans.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

// DATA
let players_: [Player] = Bundle.main.decode("player.json")
let categories_: [Category] = Bundle.main.decode("category.json")
let products_: [Product] = Bundle.main.decode("product.json")
let brands_: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct_ = products_[0]

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
// API
// IMAGE
// FONT
// STRING
// MISC
