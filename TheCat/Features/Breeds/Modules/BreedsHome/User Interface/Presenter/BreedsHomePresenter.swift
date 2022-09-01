//
//  BreedsHomePresenter.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedsHomePresenter {

    weak var view: BreedsHomeViewInput!
    var interactor: BreedsHomeInteractorInput!
    var router: BreedsHomeRouterInput!
}


// MARK: BreedsHomeModuleInput methods

extension BreedsHomePresenter: BreedsHomeModuleInput {

    func initializeModule() {
    }
}


// MARK: BreedsHomeViewOutput methods

extension BreedsHomePresenter: BreedsHomeViewOutput {

    func viewIsReady() {
    }
}


// MARK: BreedsHomeInteractorOutput methods

extension BreedsHomePresenter: BreedsHomeInteractorOutput {
}
