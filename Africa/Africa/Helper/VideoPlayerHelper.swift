//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func videoPlay(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}

