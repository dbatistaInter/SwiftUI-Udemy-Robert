//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by David Eduardo Batista on 05/07/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                HStack {
                    ForEach(0..<5, id: \.self) { item in
                        Button(action: {
                            feedback.impactOccurred()
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    colorGray.clipShape(RoundedRectangle.init(cornerRadius: 5))
                                )
                                .foregroundStyle(.white)
                        })
                    }
                }//: HSTACK
            }//: VSTACK -RATINGS
            
            Spacer()
            // SIZES
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment:.center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {
                            feedback.impactOccurred()
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                                
                        })
                    }
                }
            }
        }//: HSTACK
    }
}

#Preview {
    RatingsSizesDetailView()
}
