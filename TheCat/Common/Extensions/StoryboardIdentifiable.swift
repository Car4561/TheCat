//
//  StoryboardIdentifiable.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
}
