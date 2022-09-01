//
//  BreedsHomeViewOutput.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol BreedsHomeViewOutput {

    func viewIsReady()
    func breedVoting(breed: Breed, voting: Voting)
    func didTapSavedButton()
}
