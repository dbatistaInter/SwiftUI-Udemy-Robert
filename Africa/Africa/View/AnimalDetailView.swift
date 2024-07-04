//
//  AnimalDetailView.swift
//  Africa
//
//  Created by David Eduardo Batista on 02/07/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.center, spacing: 20) {
                // 1. HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // 2. TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                // 3. HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                // 4. GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // 5. FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                // 6. DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                // 7. MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                // 8. LINK
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn more")
                    
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            }//: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }//: SCROLL
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return NavigationStack{
        AnimalDetailView(animal: animals[0])
    }
}
