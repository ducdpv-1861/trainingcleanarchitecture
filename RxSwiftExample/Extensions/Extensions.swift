//
//  Extension.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/10/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import MBProgressHUD

extension Reactive where Base: UIViewController {
    
    var error: Binder<Error> {
        return Binder(base) { viewController, error in
            //viewController.showError(error.localizedDescription)
        }
    }
    
    var isLoading: Binder<Bool> {
        return Binder(base) { viewController, isLoading in
            if isLoading {
                let hud = MBProgressHUD.showAdded(to: viewController.view, animated: true)
                hud.offset.y = -30
            } else {
                MBProgressHUD.hide(for: viewController.view, animated: true)
            }
        }
    }
}


