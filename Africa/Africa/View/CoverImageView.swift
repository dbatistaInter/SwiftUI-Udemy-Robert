//
//  CoverImageView.swift
//  Africa
//
//  Created by David Eduardo Batista on 02/07/24.
//

import SwiftUI

struct CoverImageView: View {
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}
