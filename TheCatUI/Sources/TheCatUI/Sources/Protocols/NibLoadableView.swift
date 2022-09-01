//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

protocol NibLoadableView: AnyObject {
    
    static var nibName: String { get }
}

extension NibLoadableView {

    static var nibName: String {
        String(describing: self)
    }
}
