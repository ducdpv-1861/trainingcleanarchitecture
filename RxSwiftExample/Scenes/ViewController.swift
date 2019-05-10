//
//  ViewController.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/2/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Then

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: MainViewModel!
    private let firstLoadTrigger = PublishSubject<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        
        enum MyError: Error {
            case error1
        }
    
        print("test change")
    }
    
    
    private func configView() {
        title = "Gitgub"
        tableView.do {
            $0.register(cellType: RepoTableViewCell.self)
            $0.rowHeight = 80
        }
    }
    
    func bindViewModel() {
        let input = MainViewModel.Input()
        let _ = viewModel.transform(input)
    }

}

