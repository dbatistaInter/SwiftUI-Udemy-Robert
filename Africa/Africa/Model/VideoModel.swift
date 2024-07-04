//
//  VideoModel.swift
//  Africa
//
//  Created by David Eduardo Batista on 03/07/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    var thumbnail: String {
       "video-\(id)"
    }
}
