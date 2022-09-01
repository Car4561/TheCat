//
//  CatsHomeConfigurator.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class CatsHomeModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {

        if let viewController = viewInput as? CatsHomeViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: CatsHomeViewController) {

        let router = CatsHomeRouter()

        let presenter = CatsHomePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CatsHomeInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }
}
