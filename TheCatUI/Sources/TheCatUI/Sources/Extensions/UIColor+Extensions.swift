//
//  UIColor+Extensions.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

extension UIColor {

    static func loadColor(named: String) -> UIColor {
        guard let color = UIColor(named: named, in: Bundle.module, compatibleWith: nil) else { abort() }
        
        return color
    }
}
