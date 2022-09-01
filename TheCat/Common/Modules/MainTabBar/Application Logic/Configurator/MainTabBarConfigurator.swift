//
//  MainTabBarConfigurator.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class MainTabBarModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {

        if let viewController = viewInput as? MainTabBarViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MainTabBarViewController) {

        let router = MainTabBarRouter()

        let presenter = MainTabBarPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MainTabBarInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }
}
