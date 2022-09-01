//
//  BreedSavedPresenterTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class BreedSavedPresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A BreedSaved Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: BreedSavedInteractorInput {
    }

    private class MockRouter: BreedSavedRouterInput {
    }

    private class MockView: BreedSavedViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> BreedSavedModuleInput {

            return BreedSavedPresenter()
	    }
    }
}
