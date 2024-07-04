//
//  HeadingView.swift
//  Africa
//
//  Created by David Eduardo Batista on 02/07/24.
//

import SwiftUI

struct HeadingView: View {
    let headingImage: String
    let headingText: String
    var body: some View {
        
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(Color.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
}
