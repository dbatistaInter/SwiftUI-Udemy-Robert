//
//  ProductItemView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background(
                Color(red: product.red, green: product.green, blue: product.blue)
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // PRICE
            Text(product.formatPrice)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
        }//: VSTACK
    }
}

#Preview {
    ProductItemView(product: products_[0])
}
