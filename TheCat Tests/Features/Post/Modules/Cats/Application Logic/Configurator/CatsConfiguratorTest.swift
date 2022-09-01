//
//  CatsConfiguratorTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class CatsModuleConfiguratorTest: QuickSpec {

    override func spec() {
        var viewController: CatsViewControllerMock!
        var configurator: CatsModuleConfigurator!

        beforeEach {
            viewController = CatsViewControllerMock()

            configurator = CatsModuleConfigurator()
            configurator.configureModuleForViewInput(viewController)
        }

        afterEach {
            viewController = nil
            configurator = nil
        }

        describe("A CatsModuleConfigurator") {
            it("should configure the viewController") {
                expect(viewController.output).toNot(beNil())
                expect(viewController.output).to(beAKindOf(CatsPresenter.self))
            }

            it("should configure the presenter") {
                let presenter = viewController.output as? CatsPresenter

                expect(presenter?.view).toNot(beNil())
                expect(presenter?.view).to(beAKindOf(CatsViewController.self))

                expect(presenter?.router).toNot(beNil())
                expect(presenter?.router).to(beAKindOf(CatsRouter.self))

                expect(presenter?.interactor).toNot(beNil())
                expect(presenter?.interactor).to(beAKindOf(CatsInteractor.self))
            }

            it("should configure the interactor") {
                let presenter = viewController.output as? CatsPresenter
                let interactor = presenter?.interactor as? CatsInteractor

                expect(interactor?.output).toNot(beNil())
                expect(interactor?.output).to(beAKindOf(CatsPresenter.self))
            }
        }
    }


    // MARK: Mock Classes

    private class CatsViewControllerMock: CatsViewController {
    }
}
