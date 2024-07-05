//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var sampleProduct = sampleProduct_
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0){
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -12)
                    .padding(.bottom, 10)
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                // QUANTITY + FAVORITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // ADD TO CART
                AddToCardDetailView()
                    .padding(.bottom,20)
                Spacer()
            }//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -115)
            )
            .zIndex(0)
            
        }//: VSTACK
        .ignoresSafeArea()
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
