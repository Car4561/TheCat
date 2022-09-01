//
//  BreedsHomeViewInput.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol BreedsHomeViewInput: AnyObject {

    func setUpInitialState()
    func moduleInput() -> BreedsHomeModuleInput
    func setBreedList(_ breedList: [Breed])
    func showActivityIndicatorView()
    func hideActivityIndicatorView()
}
