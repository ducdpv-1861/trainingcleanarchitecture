//
//  AppNavigator.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/10/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import RxCocoa
import MGArchitecture

protocol AppNavigatorType {
    func toMain()
}

struct AppNavigator: AppNavigatorType {
    unowned let window: UIWindow
    
    func toMain() {
        let viewController = MainViewController.instantiate()
        let navigationController = UINavigationController(rootViewController: viewController)
        let navigator = MainNavigator(navigationController: navigationController)
        let useCase = MainUseCase()
        let viewModel = MainViewModel(navigator: navigator, useCase: useCase)
        
        viewController.bindViewModel(to: viewModel)
        window.rootViewController = navigationController
    }
}
