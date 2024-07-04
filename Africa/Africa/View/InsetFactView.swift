//
//  InsetFactView.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }//: LOOP
            }//: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: BOX
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetFactView(animal: animals[0])
}
