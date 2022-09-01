//
//  CatsHomeConfiguratorTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class CatsHomeModuleConfiguratorTest: QuickSpec {

    override func spec() {
        var viewController: CatsHomeViewControllerMock!
        var configurator: CatsHomeModuleConfigurator!

        beforeEach {
            viewController = CatsHomeViewControllerMock()

            configurator = CatsHomeModuleConfigurator()
            configurator.configureModuleForViewInput(viewController)
        }

        afterEach {
            viewController = nil
            configurator = nil
        }

        describe("A CatsHomeModuleConfigurator") {
            it("should configure the viewController") {
                expect(viewController.output).toNot(beNil())
                expect(viewController.output).to(beAKindOf(CatsHomePresenter.self))
            }

            it("should configure the presenter") {
                let presenter = viewController.output as? CatsHomePresenter

                expect(presenter?.view).toNot(beNil())
                expect(presenter?.view).to(beAKindOf(CatsHomeViewController.self))

                expect(presenter?.router).toNot(beNil())
                expect(presenter?.router).to(beAKindOf(CatsHomeRouter.self))

                expect(presenter?.interactor).toNot(beNil())
                expect(presenter?.interactor).to(beAKindOf(CatsHomeInteractor.self))
            }

            it("should configure the interactor") {
                let presenter = viewController.output as? CatsHomePresenter
                let interactor = presenter?.interactor as? CatsHomeInteractor

                expect(interactor?.output).toNot(beNil())
                expect(interactor?.output).to(beAKindOf(CatsHomePresenter.self))
            }
        }
    }


    // MARK: Mock Classes

    private class CatsHomeViewControllerMock: CatsHomeViewController {
    }
}
