//
//  BreedsHomePresenterTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class BreedsHomePresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A BreedsHome Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: BreedsHomeInteractorInput {
    }

    private class MockRouter: BreedsHomeRouterInput {
    }

    private class MockView: BreedsHomeViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> BreedsHomeModuleInput {

            return BreedsHomePresenter()
	    }
    }
}
