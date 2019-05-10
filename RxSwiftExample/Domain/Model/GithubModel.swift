//
//  GithubModel.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/7/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import ObjectMapper

struct GithubRepo {
    var name: String
    var starCount: Int
    var avatarURLString: String
}

extension GithubRepo {
    init() {
        self.init(
            name: "",
            starCount: 0,
            avatarURLString: ""
        )
    }
}

extension GithubRepo: Mappable{
    
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        name <- map["name"]
        starCount <- map["stargazers_count"]
        avatarURLString <- map["owner.avatar_url"]
    }
}
