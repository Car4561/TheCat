//
//  BreedClient.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import Combine
import TheCatNetworking
import Foundation

protocol BreedClientProvider {
    func breedList() -> AnyPublisher<[Breed], NetworkingError>
}

final class BreedClient: RestClient, BreedClientProvider {
    func breedList() -> AnyPublisher<[Breed], NetworkingError> {
        request(resource: BreedResource.breedList, type: [Breed].self, errorType: ErrorResponse.self)
    }
}
