//
//  BreedsHomeRouter.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedsHomeRouter: BreedsHomeRouterInput, Routable {

    var viewController: BreedsHomeViewController!

    func routeToBreedSaved() {
        pushViewController(withIdentifer: BreedSavedViewController.storyboardIdentifier,
                           in: .breeds,
                           from: viewController)
    }
}
