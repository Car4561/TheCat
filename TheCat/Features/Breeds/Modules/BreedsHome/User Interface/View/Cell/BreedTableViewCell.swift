//
//  BreedTableViewCell.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import UIKit
import TheCatUI

protocol BreedTableViewCellCellDelegate: AnyObject {
    
    func didTapVoting(breed: Breed, voting: Voting)
}

class BreedTableViewCell: UITableViewCell {

    var breed: Breed!

    weak var delegate: BreedTableViewCellCellDelegate?
    
    private var voting: Voting!
    
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


    func configure(with breed: Breed) {
        self.breed = breed
        descriptionLabel.text = breed.description
        catImageView.loadImage(url: breed.image?.url)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        catImageView.image = nil
    }

    @IBAction func didTapLikeButton(_ sender: Any) {
        if case .like = voting {
            voting = .noVote
        } else {
            voting = .like
        }
        delegate?.didTapVoting(breed: breed, voting: voting)
        likeButton.isSelected = !likeButton.isSelected
        dislikeButton.isSelected = false
    }
    
    @IBAction func didTapDisikeButton(_ sender: Any) {
        if case .dislike = voting {
            voting = .noVote
        } else {
            voting = .dislike
        }
        delegate?.didTapVoting(breed: breed, voting: voting)
        dislikeButton.isSelected = !dislikeButton.isSelected
        likeButton.isSelected = false
    }
}
