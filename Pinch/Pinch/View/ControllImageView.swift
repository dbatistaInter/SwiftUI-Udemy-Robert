//
//  ControllImageView.swift
//  Pinch
//
//  Created by David Eduardo Batista on 27/06/24.
//

import SwiftUI

struct ControllImageView: View {
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview {
    ControllImageView(icon: "minus.magnifyingglass")
}
