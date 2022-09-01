//
//  CatsHomeViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit
import TheCatUI

class CatsHomeViewController: UIViewController, NavigationBarStyle {

    // MARK: Properties

    var output: CatsHomeViewOutput!

    var catsList: [Cat] = [] {
        didSet {
            catsTableView.reloadData()
        }
    }

    // MARK: IBOutlets

    @IBOutlet weak var catsTableView: UITableView! {
        didSet {
            catsTableView.dataSource = self
            catsTableView.separatorStyle = .none
            catsTableView.backgroundColor = TCColors.whiteBackground
            catsTableView.register(CatTableViewCell.self)
        }
    }
    
    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryStyle()
        configureMainNavigation()
        output.viewIsReady()
    }
    
    func configureMainNavigation() {
        title = CatsStrings.title
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        navigationController?.navigationBar.barStyle = .black
    }
}

// MARK: TableView Delegate & Data source

extension CatsHomeViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as CatTableViewCell
        let cat = catsList[indexPath.row]
        cell.configure(with: cat)
        return cell
    }
}


// MARK: CatsHomeViewInput Methods

extension CatsHomeViewController: CatsHomeViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> CatsHomeModuleInput {
        return output as! CatsHomeModuleInput
    }
    
    func setCatsList(_ catsList: [Cat]) {
        self.catsList = catsList
    }
}
