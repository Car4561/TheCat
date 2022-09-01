//
//  CatsHomePresenter.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class CatsHomePresenter {

    weak var view: CatsHomeViewInput!
    var interactor: CatsHomeInteractorInput!
    var router: CatsHomeRouterInput!
}


// MARK: CatsHomeModuleInput methods

extension CatsHomePresenter: CatsHomeModuleInput {

    func initializeModule() {
    }
}


// MARK: CatsHomeViewOutput methods

extension CatsHomePresenter: CatsHomeViewOutput {

    func viewIsReady() {
        view.showActivityIndicatorView()
        interactor.getCatsList()
    }
}


// MARK: CatsHomeInteractorOutput methods

extension CatsHomePresenter: CatsHomeInteractorOutput {

    func didFetchCats(_ catsList: [Cat]) {
        view.hideActivityIndicatorView()
        view.setCatsList(catsList)
    }
    
    func didFailFetchCats() {
        view.hideActivityIndicatorView()
    }
}
