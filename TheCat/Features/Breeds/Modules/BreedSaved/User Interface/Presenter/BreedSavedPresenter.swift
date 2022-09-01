//
//  BreedSavedPresenter.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedSavedPresenter {

    weak var view: BreedSavedViewInput!
    var interactor: BreedSavedInteractorInput!
    var router: BreedSavedRouterInput!
}


// MARK: BreedSavedModuleInput methods

extension BreedSavedPresenter: BreedSavedModuleInput {

    func initializeModule() {
    }
}


// MARK: BreedSavedViewOutput methods

extension BreedSavedPresenter: BreedSavedViewOutput {

    func viewIsReady() {
        interactor.getBreedsSavedList()
    }
}


// MARK: BreedSavedInteractorOutput methods

extension BreedSavedPresenter: BreedSavedInteractorOutput {

    func didFetchBreedsSaved(_ breedsSavedList: [BreedData]) {
        view.setBreedSavedList(breedsSavedList)
    }
}
