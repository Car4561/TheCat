//
//  BreedsHomeConfiguratorTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class BreedsHomeModuleConfiguratorTest: QuickSpec {

    override func spec() {
        var viewController: BreedsHomeViewControllerMock!
        var configurator: BreedsHomeModuleConfigurator!

        beforeEach {
            viewController = BreedsHomeViewControllerMock()

            configurator = BreedsHomeModuleConfigurator()
            configurator.configureModuleForViewInput(viewController)
        }

        afterEach {
            viewController = nil
            configurator = nil
        }

        describe("A BreedsHomeModuleConfigurator") {
            it("should configure the viewController") {
                expect(viewController.output).toNot(beNil())
                expect(viewController.output).to(beAKindOf(BreedsHomePresenter.self))
            }

            it("should configure the presenter") {
                let presenter = viewController.output as? BreedsHomePresenter

                expect(presenter?.view).toNot(beNil())
                expect(presenter?.view).to(beAKindOf(BreedsHomeViewController.self))

                expect(presenter?.router).toNot(beNil())
                expect(presenter?.router).to(beAKindOf(BreedsHomeRouter.self))

                expect(presenter?.interactor).toNot(beNil())
                expect(presenter?.interactor).to(beAKindOf(BreedsHomeInteractor.self))
            }

            it("should configure the interactor") {
                let presenter = viewController.output as? BreedsHomePresenter
                let interactor = presenter?.interactor as? BreedsHomeInteractor

                expect(interactor?.output).toNot(beNil())
                expect(interactor?.output).to(beAKindOf(BreedsHomePresenter.self))
            }
        }
    }


    // MARK: Mock Classes

    private class BreedsHomeViewControllerMock: BreedsHomeViewController {
    }
}
