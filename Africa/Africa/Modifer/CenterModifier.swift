//
//  CenterModifier.swift
//  Africa
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
