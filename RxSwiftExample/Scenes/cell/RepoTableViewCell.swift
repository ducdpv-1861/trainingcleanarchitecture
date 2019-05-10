//
//  RepoTableViewCell.swift
//  RxSwiftExample
//
//  Created by pham.van.ducd on 5/7/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit
import Reusable
import SDWebImage

class RepoTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var lbStarCount: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setContentForCell(_ githubRepo: GithubRepo) {
        //avatarImageView.sd_setShowActivityIndicatorView(true)
        avatarImageView.sd_setImage(with: URL(string: githubRepo.avatarURLString), completed: nil)
        nameLabel.text = githubRepo.name
        lbStarCount.text = String(githubRepo.starCount)
        
    }
    
}
