//
//  BreedSavedInteractorOutput.swift
//  TheCat
//
//  Created by Carlos Llerena on 01/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol BreedSavedInteractorOutput: AnyObject {
    func didFetchBreedsSaved(_ breedsSavedList: [BreedData])
}
