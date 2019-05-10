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
import MGArchitecture
import NSObject_Rx
import Reusable

class MainViewController: UIViewController, BindableType {
    
    @IBOutlet weak private var tableView: UITableView!
    
    var viewModel: MainViewModel!
    private let firstLoadTrigger = PublishSubject<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        tableView.do {
            $0.register(cellType: RepoTableViewCell.self)
            $0.rowHeight = 80
        }
    }
    
    func bindViewModel() {
        let input = MainViewModel.Input(
            loadTrigger: Driver.just(()),
            selectTrigger: tableView.rx.itemSelected.asDriver()
        )
        let output = viewModel.transform(input)
        
        output.repos
            .drive(tableView.rx.items) { tableView, index, repo in
                let indexPath = IndexPath(item: index, section: 0)
                let cell: RepoTableViewCell = tableView.dequeueReusableCell(for: indexPath)
                cell.setContentForCell(repo)
                return cell
            }
            .disposed(by: rx.disposeBag)
        
        output.selected
            .drive()
            .disposed(by: rx.disposeBag)
        
        output.indicator
            .drive(rx.isLoading)
            .disposed(by: rx.disposeBag)
        
        output.error
            .drive(rx.error)
            .disposed(by: rx.disposeBag)
    }
}

extension MainViewController: StoryboardSceneBased {
    static var sceneStoryboard = StoryBoards.main
}
