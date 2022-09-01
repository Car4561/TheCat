//
//  BreedSavedInitializer.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Foundation

class BreedSavedModuleInitializer: NSObject {

    // TODO: Connect with object on storyboard
    @IBOutlet weak var breedSavedViewController: BreedSavedViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let configurator = BreedSavedModuleConfigurator()
        configurator.configureModuleForViewInput(breedSavedViewController)
    }
}
