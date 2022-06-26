//
//  Shop.swift
//  Touchdown
//
//  Created by Alex on 26/06/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
