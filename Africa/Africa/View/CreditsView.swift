//
//  CreditsViewe.swift
//  Africa
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright ® Roberto Petras
    All right reserved
    Better Apps Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
