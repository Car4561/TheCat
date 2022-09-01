//
//  CatsHomeViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit

class CatsHomeViewController: UIViewController {

    var output: CatsHomeViewOutput!


    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

	    // TODO: View set up code goes here. Please remove this comment.

        output.viewIsReady()
    }
}


// MARK: CatsHomeViewInput Methods

extension CatsHomeViewController: CatsHomeViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> CatsHomeModuleInput {
        return output as! CatsHomeModuleInput
    }
}
