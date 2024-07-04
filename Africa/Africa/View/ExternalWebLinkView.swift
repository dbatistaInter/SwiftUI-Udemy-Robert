//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return ExternalWebLinkView(animal: animals[0])
}
