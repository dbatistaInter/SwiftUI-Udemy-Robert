//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return AnimalGridItemView(animal: animals[0])
}
