//
//  MainViewModel.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/7/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import MGArchitecture
import RxCocoa

struct MainViewModel {
    let navigator: MainNavigatorType
    let useCase: MainUseCaseType
}

extension MainViewModel: ViewModelType {
    func transform(_ input: MainViewModel.Input) -> MainViewModel.Output {
        
        return Output()
    }
    
    struct Input {
        
    }
    
    struct Output {

    }
    
}
