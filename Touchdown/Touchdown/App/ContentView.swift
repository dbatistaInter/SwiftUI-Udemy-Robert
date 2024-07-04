//
//  ContentView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let products: [Product] = products_
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                            .padding(15)
                        })
                        FooterView()
                            .padding(.horizontal)
                    }
                }
                
            }//: VSTACK
            .background(
                colorBackground.ignoresSafeArea()
            )
        }
    }
}

#Preview {
    ContentView()
}
