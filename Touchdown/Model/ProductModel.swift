//
//  ProductModel.swift
//  Touchdown
//
//  Created by Alex on 25/06/2022.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double {
        return color[0]
    }
    
    var green: Double {
        return color[1]
    }
    
    var blue: Double {
        return color[2]
    }
    
    var colorRGB: Color {
        return Color(red: red, green: green, blue: blue)
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
