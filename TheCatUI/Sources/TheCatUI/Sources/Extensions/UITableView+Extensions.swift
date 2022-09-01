//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import UIKit

protocol ReusableViewIdentifier: AnyObject {
    
    static var reuseIdentifier: String { get }
}

extension ReusableViewIdentifier where Self: UIView {
    
    static var reuseIdentifier: String {
        String(describing: self)
    }
}

extension UITableViewCell: ReusableViewIdentifier, NibLoadableView {}

extension UITableView {

    public func register<T: UITableViewCell>(_: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }

    public func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            preconditionFailure("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }

        return cell
    }
}
