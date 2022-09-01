//
//  BreedSavedViewTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class BreedSavedViewTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A BreedSaved View") {
        }
    }


    // MARK: Mock Classes

    private class MockOutput: BreedSavedViewOutput {

        var viewIsReadyCount = 0

        func viewIsReady() {
            viewIsReadyCount += 1
        }
    }
}
