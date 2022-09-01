//
//  BreedsHomeViewController.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit
import TheCatUI

class BreedsHomeViewController: UIViewController, NavigationBarStyle {

    // MARK: Properties

    var output: BreedsHomeViewOutput!

    var breedsList: [Breed] = [] {
        didSet {
            breedsTableView.reloadData()
        }
    }

    // MARK: IBOutlets

    @IBOutlet weak var breedsTableView: UITableView! {
        didSet {
            breedsTableView.dataSource = self
            breedsTableView.backgroundColor = TCColors.whiteBackground
            breedsTableView.register(BreedTableViewCell.self)
        }
    }
    
    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryStyle()
        configureMainNavigation()
        configureSavedButton()
        output.viewIsReady()
    }
    
    func configureMainNavigation() {
        title = BreedsStrings.Home.title
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        navigationController?.navigationBar.barStyle = .black
    }
    
    private func configureSavedButton() {
        let savedBarButtonItem = UIBarButtonItem(image: TCImages.tcSaved, style: .done, target: self, action: #selector(didTapSavedButton(_:)))
        navigationItem.setRightBarButton(savedBarButtonItem, animated: false)
    }
    
    @objc func didTapSavedButton(_ sender: UIBarButtonItem) {
        output.didTapSavedButton()
    }
}

// MARK: TableView Delegate & Data source

extension BreedsHomeViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        breedsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as BreedTableViewCell
        let breed = breedsList[indexPath.row]
        cell.configure(with: breed)
        cell.delegate = self
        return cell
    }
}

// MARK: BreedTableViewCellCellDelegate Delegate

extension BreedsHomeViewController: BreedTableViewCellCellDelegate {

    func didTapVoting(breed: Breed, voting: Voting) {
        output.breedVoting(breed: breed, voting: voting)
    }
}

// MARK: BreedsHomeViewInput Methods

extension BreedsHomeViewController: BreedsHomeViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> BreedsHomeModuleInput {
        return output as! BreedsHomeModuleInput
    }
    
    func setBreedList(_ breedList: [Breed]) {
        self.breedsList = breedList
    }
}
