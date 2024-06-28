//
//  PageModel.swift
//  Pinch
//
//  Created by David Eduardo Batista on 28/06/24.
//

import Foundation

struct Page: Identifiable {
    var id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
