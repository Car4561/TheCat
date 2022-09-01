//
//  MainTabBarViewInput.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol MainTabBarViewInput: AnyObject {

    func setUpInitialState()
    func moduleInput() -> MainTabBarModuleInput
}
