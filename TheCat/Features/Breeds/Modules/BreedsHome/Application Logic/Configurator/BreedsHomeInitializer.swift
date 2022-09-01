//
//  BreedsHomeInitializer.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Foundation

class BreedsHomeModuleInitializer: NSObject {

    // TODO: Connect with object on storyboard
    @IBOutlet weak var breedsHomeViewController: BreedsHomeViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let configurator = BreedsHomeModuleConfigurator()
        configurator.configureModuleForViewInput(breedsHomeViewController)
    }
}
