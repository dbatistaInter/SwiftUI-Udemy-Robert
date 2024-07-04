//
//  InsetGalleryView.swift
//  Africa
//
//  Created by David Eduardo Batista on 02/07/24.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery,id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
            }
        }//: HSTACK
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetGalleryView(animal: animals[0])
}
