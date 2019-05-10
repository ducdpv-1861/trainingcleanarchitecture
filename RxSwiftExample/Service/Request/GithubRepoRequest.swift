//
//  GithubRepoRequest.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/8/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation


final class GithubRepoRequest: BaseRequest {
    
    required init(page: Int, perPage: Int = 10) {
        let body: [String: Any]  = [
            "q": "language:swift",
            "per_page": perPage,
            "page": page
        ]
        super.init(url: URLs.githubRepo, requestType: .get, body: body)
    }
    
}
