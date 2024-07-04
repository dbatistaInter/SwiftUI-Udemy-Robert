//
//  VideoListItem.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import SwiftUI

struct VideoListItemView: View {
    let video: Video
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 9))
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: ZSTACK
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//: VSTACK
        }//: HSTACK
    }
}

#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    return VideoListItemView(video: videos[0])
}
