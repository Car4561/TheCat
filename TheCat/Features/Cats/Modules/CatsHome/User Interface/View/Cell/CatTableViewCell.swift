//
//  CatTableViewCell.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 30/08/22.
//

import UIKit
import TheCatUI

protocol CatTableViewCellDelegate: AnyObject {
    
    func didTapCheckBoxButton()
}

class CatTableViewCell: UITableViewCell {

    weak var delegate: CatTableViewCellDelegate?
    
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.backgroundColor = TCColors.whiteBackground
        }
    }
 
    @IBOutlet weak var catImageView: UIImageView!

    func configure(with cat: Cat) {
    
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        catImageView.image = nil
       // cat = nil
    }
}
