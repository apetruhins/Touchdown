//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Alex on 23/06/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
