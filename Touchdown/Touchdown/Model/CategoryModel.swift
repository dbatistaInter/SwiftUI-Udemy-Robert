//
//  CategoryModel.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import Foundation
struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
