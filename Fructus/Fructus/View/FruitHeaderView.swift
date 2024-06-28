//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by David Eduardo Batista on 28/06/24.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTY
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .white.opacity(0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
                .padding(.vertical, 20)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
