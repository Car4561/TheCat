//
//  BreedSavedConfigurator.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedSavedModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {

        if let viewController = viewInput as? BreedSavedViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: BreedSavedViewController) {

        let router = BreedSavedRouter()

        let presenter = BreedSavedPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = BreedSavedInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }
}
