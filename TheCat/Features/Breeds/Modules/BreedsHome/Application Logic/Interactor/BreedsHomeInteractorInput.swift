//
//  BreedsHomeInteractorInput.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol BreedsHomeInteractorInput {
    func getBreedsList()
    func saveBreed(breed: Breed, voting: Voting)
}
