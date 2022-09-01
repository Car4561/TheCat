//
//  BreedSavedInteractor.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class BreedSavedInteractor: BreedSavedInteractorInput {

    weak var output: BreedSavedInteractorOutput!
    
    func getBreedsSavedList() {
       let breedsSavedList = CoreDataManager.shared.fetchBreeds()
       guard let breedsSavedList = breedsSavedList else { return }
       output.didFetchBreedsSaved(breedsSavedList)
    }
}
