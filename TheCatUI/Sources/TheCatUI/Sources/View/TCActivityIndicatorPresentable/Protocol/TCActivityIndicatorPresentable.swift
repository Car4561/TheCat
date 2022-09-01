//
//  TCActivityIndicatorPresentable.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 1/09/22.
//

import UIKit

fileprivate var tcActivityIndicatorView: UIActivityIndicatorView!

public protocol TCActivityIndicatorPresentable {
    
    func showTCActivityIndicatorView()
    func hideTCActivityIndicatorView()
}

public extension TCActivityIndicatorPresentable where Self: UIViewController {
    
    func showTCActivityIndicatorView() {
        tcActivityIndicatorView = UIActivityIndicatorView(style: .large)
        tcActivityIndicatorView.center = self.view.center
        view.addSubview(tcActivityIndicatorView)
        tcActivityIndicatorView.startAnimating()
    }
    
    func hideTCActivityIndicatorView() {
        tcActivityIndicatorView.removeFromSuperview()
    }
}
