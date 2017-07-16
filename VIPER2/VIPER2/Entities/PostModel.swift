//
//  PostModel.swift
//  VIPER2
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation
import ObjectMapper

struct PostModel {
    var id = 0
    var title = ""
    var imageUrl = ""
    var thumbImageUrl = ""
}

extension PostModel: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        id       <- map["id"]
        title     <- map["title"]
        imageUrl     <- map["url"]
        thumbImageUrl     <- map["thumbUrl"]
    }
    
}
