//
//  BreedSavedConfiguratorTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class BreedSavedModuleConfiguratorTest: QuickSpec {

    override func spec() {
        var viewController: BreedSavedViewControllerMock!
        var configurator: BreedSavedModuleConfigurator!

        beforeEach {
            viewController = BreedSavedViewControllerMock()

            configurator = BreedSavedModuleConfigurator()
            configurator.configureModuleForViewInput(viewController)
        }

        afterEach {
            viewController = nil
            configurator = nil
        }

        describe("A BreedSavedModuleConfigurator") {
            it("should configure the viewController") {
                expect(viewController.output).toNot(beNil())
                expect(viewController.output).to(beAKindOf(BreedSavedPresenter.self))
            }

            it("should configure the presenter") {
                let presenter = viewController.output as? BreedSavedPresenter

                expect(presenter?.view).toNot(beNil())
                expect(presenter?.view).to(beAKindOf(BreedSavedViewController.self))

                expect(presenter?.router).toNot(beNil())
                expect(presenter?.router).to(beAKindOf(BreedSavedRouter.self))

                expect(presenter?.interactor).toNot(beNil())
                expect(presenter?.interactor).to(beAKindOf(BreedSavedInteractor.self))
            }

            it("should configure the interactor") {
                let presenter = viewController.output as? BreedSavedPresenter
                let interactor = presenter?.interactor as? BreedSavedInteractor

                expect(interactor?.output).toNot(beNil())
                expect(interactor?.output).to(beAKindOf(BreedSavedPresenter.self))
            }
        }
    }


    // MARK: Mock Classes

    private class BreedSavedViewControllerMock: BreedSavedViewController {
    }
}
