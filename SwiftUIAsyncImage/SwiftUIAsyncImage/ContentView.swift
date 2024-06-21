//
//  ContentView.swift
//  SwiftUIAsyncImage
//
//  Created by David Eduardo Batista on 21/06/24.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        VStack {
            //MARK: - 1. BASIC
            //AsyncImage(url: URL(string: imageURL))
            //MARK: - 2. SCALE
            //AsyncImage(url: URL(string: imageURL), scale: 3.0)
            //MARK: - 3. PLACEHOLDER
            AsyncImage(url: URL(string: imageURL)) { image in
                image
                    .imageModifier()
            } placeholder: {
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
            }
            .padding(40)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
