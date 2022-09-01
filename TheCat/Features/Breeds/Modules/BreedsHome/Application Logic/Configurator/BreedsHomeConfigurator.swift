//
//  BreedsHomeConfigurator.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedsHomeModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {

        if let viewController = viewInput as? BreedsHomeViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: BreedsHomeViewController) {

        let router = BreedsHomeRouter()

        let presenter = BreedsHomePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = BreedsHomeInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }
}
