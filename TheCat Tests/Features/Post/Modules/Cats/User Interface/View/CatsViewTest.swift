//
//  CatsViewTest.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import TheCat

final class CatsViewTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A Cats View") {
        }
    }


    // MARK: Mock Classes

    private class MockOutput: CatsViewOutput {

        var viewIsReadyCount = 0

        func viewIsReady() {
            viewIsReadyCount += 1
        }
    }
}
