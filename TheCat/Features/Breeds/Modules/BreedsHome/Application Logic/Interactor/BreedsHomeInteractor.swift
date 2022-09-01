//
//  BreedsHomeInteractor.swift
//  TheCat
//
//  Created by Carlos Llerena on 30/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Combine
import Foundation

class BreedsHomeInteractor: BreedsHomeInteractorInput {

    weak var output: BreedsHomeInteractorOutput!
    lazy var networkingService: NetworkingService = NetworkingService()
    lazy var breedClient: BreedClientProvider = BreedClient(configuration: NetworkingService().configuration)
    var cancellables: Set<AnyCancellable> = []

    func getBreedsList() {
        breedClient.breedList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let networkingError):
                    switch networkingError {
                    case .notConnectionInternet(_):
                        self?.output.didFailFetchBreeds()
                    case .unexpectedError(_):
                        self?.output.didFailFetchBreeds()
                    default:
                        self?.output.didFailFetchBreeds()
                    }
                default:
                    break
                }
            }, receiveValue: { [weak self] response in
                self?.output.didFetchBreeds(response)
            }).store(in: &cancellables)
    }
    
    func saveBreed(breed: Breed, voting: Voting) {
        let breedData = BreedData(name: breed.name, date: Date(), url: breed.image?.url ?? "", voting: voting)
        CoreDataManager.shared.saveBreed(breedData)
    }
}
