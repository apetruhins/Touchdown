//
//  Constant.swift
//  Touchdown
//
//  Created by Alex on 19/06/2022.
//

import SwiftUI

// Screen

let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
let window = scene?.keyWindow

// Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let samplePlayer = players[0]
let sampleCategory = categories[0]
let sampleProduct = products[0]
let sampleBrand = brands[0]

// Color

let colorBackground = Color("ColorBackground")
let colorGray = Color(uiColor: .systemGray4)

// Layout

let columnSpacig: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
// API
// Image
// Font
// String
// Misc
