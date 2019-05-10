//
//  Response.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/10/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import ObjectMapper

final class GithubRepoResponse : Mappable {
    var githubRepos = [GithubRepo]()
    
    required init(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        githubRepos <- map["items"]
    }
}
