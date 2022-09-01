//
//  NavigationBarStyle.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

public protocol NavigationBarStyle {
    
    func primaryStyle()
}

public extension NavigationBarStyle where Self: UIViewController {

    func primaryStyle() {
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = TCColors.blue
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : TCColors.white]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.tintColor = TCColors.white
        navigationItem.backButtonTitle = ""
    }
}
