//
//  TCImages.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import UIKit

public struct TCImages {
    
    private struct Name {
        static let tcLike = "tcLike"
        static let tcLikeTapped = "tcLikeTapped"
        static let tcDislike = "tcDislike"
        static let tcDislikeTapped = "tcDislikeTapped"
        static let tcSaved = "tcSaved"
    }
    
    public static let tcLike = UIImage.loadImage(named: Name.tcLike)
    public static let tcLikeTapped = UIImage.loadImage(named: Name.tcLikeTapped)
    public static let tcDislike = UIImage.loadImage(named: Name.tcDislike)
    public static let tcDislikeTapped = UIImage.loadImage(named: Name.tcDislikeTapped)
    public static let tcSaved = UIImage.loadImage(named: Name.tcSaved)
}
