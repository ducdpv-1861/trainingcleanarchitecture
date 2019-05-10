//
//  MainUseCase.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/8/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol MainUseCaseType {
    func getRepos() -> Observable<[GithubRepo]>
}

struct MainUseCase: MainUseCaseType {
    
    func getRepos() -> Observable<[GithubRepo]> {
        let request = GithubRepoRequest(page: 1)
        // GithubRepoRequest(page: <#T##Int#>, perPage: <#T##Int#>)
        let repository = GithubRepoRepository()
        return repository.getGithubRepos(input: request)
    }
}
