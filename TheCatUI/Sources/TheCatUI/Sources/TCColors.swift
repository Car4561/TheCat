//
//  TCColors.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

public enum TCColors {
    
    // MARK: - NAME
    
    enum Name {
        
        static let red = "red"
        static let blue = "blue"
    }


    // MARK: - COLORS

    public static let red = UIColor.loadColor(named: Name.red)
    public static let blue = UIColor.loadColor(named: Name.blue)
}
