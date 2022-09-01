//
//  BreedsHomeViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit

class BreedsHomeViewController: UIViewController {

    var output: BreedsHomeViewOutput!


    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

	    // TODO: View set up code goes here. Please remove this comment.

        output.viewIsReady()
    }
}


// MARK: BreedsHomeViewInput Methods

extension BreedsHomeViewController: BreedsHomeViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> BreedsHomeModuleInput {
        return output as! BreedsHomeModuleInput
    }
}
