//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    let sampleProduct = sampleProduct_
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
