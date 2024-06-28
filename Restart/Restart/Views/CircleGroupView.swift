//
//  CircleGroupView.swift
//  Restart
//
//  Created by David Eduardo Batista on 25/06/24.
//

import SwiftUI

struct CircleGroupView: View {
    //MARK: - PROPERTY
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260,height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeInOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

//MARK: - PREVIEW
#Preview {
    ZStack {
        Color.colorBlue
            .ignoresSafeArea()
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
