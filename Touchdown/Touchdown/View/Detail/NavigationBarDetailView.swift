//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            Spacer()
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
}
