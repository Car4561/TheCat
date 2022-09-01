//
//  BreedSavedViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit

class BreedSavedViewController: UIViewController {

    var output: BreedSavedViewOutput!


    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

	    // TODO: View set up code goes here. Please remove this comment.

        output.viewIsReady()
    }
}


// MARK: BreedSavedViewInput Methods

extension BreedSavedViewController: BreedSavedViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> BreedSavedModuleInput {
        return output as! BreedSavedModuleInput
    }
}
