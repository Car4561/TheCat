//
//  BreedSavedTableViewCell.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import UIKit
import TheCatUI

class BreedSavedTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.backgroundColor = TCColors.whiteBackground
        }
    }
 
    @IBOutlet weak var catImageView: UIImageView!

    @IBOutlet weak var likeButton: UIButton! {
        didSet{
            likeButton.setImage(TCImages.tcLike, for: .normal)
            likeButton.setImage(TCImages.tcLikeTapped, for: .selected)
        }
    }

    @IBOutlet weak var dislikeButton: UIButton! {
        didSet{
            dislikeButton.setImage(TCImages.tcDislike, for: .normal)
            dislikeButton.setImage(TCImages.tcDislikeTapped, for: .selected)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet{
            descriptionLabel.textColor = TCColors.blue
        }
    }


    func configure(with breedData: BreedData) {
        descriptionLabel.text = breedData.name
        catImageView.loadImage(url: breedData.url)
        if breedData.voting == .like {
            likeButton.isSelected = true
        } else if breedData.voting == .dislike {
            dislikeButton.isSelected = true
        } else {
            dislikeButton.isSelected = false
            dislikeButton.isSelected = false
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        catImageView.image = nil
        likeButton.isSelected = false
        dislikeButton.isSelected = false
    }
}
