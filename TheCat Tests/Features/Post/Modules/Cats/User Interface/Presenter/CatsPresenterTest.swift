//
//  CatsPresenterTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class CatsPresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A Cats Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: CatsInteractorInput {
    }

    private class MockRouter: CatsRouterInput {
    }

    private class MockView: CatsViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> CatsModuleInput {

            return CatsPresenter()
	    }
    }
}
