//
//  Shop.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 05/07/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
