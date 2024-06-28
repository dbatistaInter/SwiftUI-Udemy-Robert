//
//  FruitRowView.swift
//  Fructus
//
//  Created by David Eduardo Batista on 28/06/24.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTY
    let fruit: Fruit
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80, alignment: .center)
                .shadow(color: .white.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}