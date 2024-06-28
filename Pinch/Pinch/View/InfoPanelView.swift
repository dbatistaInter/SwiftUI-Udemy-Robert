//
//  InfoPanelView.swift
//  Pinch
//
//  Created by David Eduardo Batista on 27/06/24.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat
    var offset: CGSize
    @State private var isInfoPanelVisible: Bool = false
    var body: some View {
        let newFormatScale = String(format:  "%2.3f", scale)
        let newFormatOffsetWidth = String(format:  "%2.3f", offset.width)
        let newFormatOffsetHeight = String(format:  "%2.3f", offset.height)
        HStack {
            //MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30,height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    isInfoPanelVisible.toggle()
                }
            Spacer()
            //MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(newFormatScale)")
                Spacer()
                Image(systemName: "arrow.left.and.right")
                Text("\(newFormatOffsetWidth)")
                Spacer()
                Image(systemName: "arrow.up.and.down")
                Text("\(newFormatOffsetHeight)")
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            Spacer()
        }
    }
}

#Preview {
    InfoPanelView(scale: 1, offset: .zero)
        .background(.blue)
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
