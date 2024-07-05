//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 05/07/24.
//

import SwiftUI

struct AddToCardDetailView: View {
    @EnvironmentObject var shop: Shop
    var sampleProduct = sampleProduct_
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded ))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green ??  sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.red)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCardDetailView()
        .environmentObject(Shop())
}
