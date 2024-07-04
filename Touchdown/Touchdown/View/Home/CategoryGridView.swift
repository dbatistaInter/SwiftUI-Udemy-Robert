//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 04/07/24.
//

import SwiftUI

struct CategoryGridView: View {
    
    var categories: [Category] = categories_
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                Section(
                    header:
                        SectionView(rotateClockwise: false),
                    footer:
                        SectionView(rotateClockwise: false))
                {
                    
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }//: LOOP
                }//: SECTION
                
            })//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL
    }
}

#Preview {
    CategoryGridView()
}
