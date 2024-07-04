//
//  VideoPlayerView.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: videoPlay(fileName: videoSelected, fileFormat: "mp4"))
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                         , alignment: .topLeading
                )
        }//: VSTACK
        .tint(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    return NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
