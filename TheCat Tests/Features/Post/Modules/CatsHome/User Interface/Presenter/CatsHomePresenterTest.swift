//
//  CatsHomePresenterTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class CatsHomePresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A CatsHome Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: CatsHomeInteractorInput {
    }

    private class MockRouter: CatsHomeRouterInput {
    }

    private class MockView: CatsHomeViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> CatsHomeModuleInput {

            return CatsHomePresenter()
	    }
    }
}
