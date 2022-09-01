//
//  CatsHomeInitializer.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Foundation

class CatsHomeModuleInitializer: NSObject {

    // TODO: Connect with object on storyboard
    @IBOutlet weak var catsHomeViewController: CatsHomeViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let configurator = CatsHomeModuleConfigurator()
        configurator.configureModuleForViewInput(catsHomeViewController)
    }
}
