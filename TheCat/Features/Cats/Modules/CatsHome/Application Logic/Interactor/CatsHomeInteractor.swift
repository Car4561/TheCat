//
//  CatsHomeInteractor.swift
//  TheCat
//
//  Created by Carlos Llerena on 29/08/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Combine
import Foundation

class CatsHomeInteractor: CatsHomeInteractorInput {
    
    weak var output: CatsHomeInteractorOutput!
    lazy var networkingService: NetworkingService = NetworkingService()
    lazy var catClient: CatClientProvider = CatClient(configuration: NetworkingService().configuration)
    var cancellables: Set<AnyCancellable> = []

    func getCatsList() {
        catClient.catList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] response in
                self?.output.didFetchCats(response)
            }).store(in: &cancellables)
    }
}
