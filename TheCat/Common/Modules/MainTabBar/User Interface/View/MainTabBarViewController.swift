//
//  MainTabBarViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit
import TheCatUI


class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate, NavigationBarStyle {

    @IBOutlet weak var tabBarMenu: UITabBar!

    var output: MainTabBarViewOutput!


    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = 0
        output.viewIsReady()
        tabBarMenu.tintColor = TCColors.blue
    }
}


// MARK: MainTabBarViewInput Methods

extension MainTabBarViewController: MainTabBarViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> MainTabBarModuleInput {
        return output as! MainTabBarModuleInput
    }
}
