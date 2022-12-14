//
//  CatsHomeViewInput.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol CatsHomeViewInput: AnyObject {

    func setUpInitialState()
    func moduleInput() -> CatsHomeModuleInput
    func setCatsList(_ catsList: [Cat])
    func showActivityIndicatorView()
    func hideActivityIndicatorView()
}
