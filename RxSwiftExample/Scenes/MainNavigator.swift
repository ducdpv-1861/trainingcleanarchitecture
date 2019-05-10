//
//  MainNavigator.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/8/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

protocol MainNavigatorType {
    func toRepoDetail(githubRepo: GithubRepo)
}

struct MainNavigator: MainNavigatorType {
    unowned let navigationController: UINavigationController
    
    func toRepoDetail(githubRepo: GithubRepo) {
    }
}
