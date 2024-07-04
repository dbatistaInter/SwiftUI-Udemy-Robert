//
//  SectionView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(colorGray)
        )
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
}
