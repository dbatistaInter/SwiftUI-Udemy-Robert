//
//  BrandGridView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct BrandGridView: View {
    let brands: [Brand] = brands_
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview {
    BrandGridView()
}
