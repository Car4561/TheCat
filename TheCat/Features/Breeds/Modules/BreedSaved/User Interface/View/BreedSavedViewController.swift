//
//  BreedSavedViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit
import TheCatUI

class BreedSavedViewController: UIViewController {

    // MARK: Properties

    var output: BreedSavedViewOutput!

    var breedSavedList: [BreedData] = [] {
        didSet {
            breedsTableView.reloadData()
        }
    }

    // MARK: IBOutlets

    @IBOutlet weak var breedsTableView: UITableView! {
        didSet {
            breedsTableView.dataSource = self
            breedsTableView.backgroundColor = TCColors.whiteBackground
            breedsTableView.register(BreedSavedTableViewCell.self)
        }
    }

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = BreedsStrings.Saved.title
        output.viewIsReady()
    }
}

// MARK: TableView Delegate & Data source

extension BreedSavedViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        breedSavedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as BreedSavedTableViewCell
        let breed = breedSavedList[indexPath.row]
        cell.configure(with: breed)
        return cell
    }
}


// MARK: BreedSavedViewInput Methods

extension BreedSavedViewController: BreedSavedViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> BreedSavedModuleInput {
        return output as! BreedSavedModuleInput
    }
    
    func setBreedSavedList(_ breedSavedList: [BreedData]) {
        self.breedSavedList = breedSavedList
    }
}
