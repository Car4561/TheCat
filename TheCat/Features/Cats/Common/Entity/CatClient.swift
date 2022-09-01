//
//  CatClient.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 30/08/22.
//

import Combine
import TheCatNetworking
import Foundation

protocol CatClientProvider {
    func catList() -> AnyPublisher<[Cat], NetworkingError>
}

final class CatClient: RestClient, CatClientProvider {
    func catList() -> AnyPublisher<[Cat], NetworkingError> {
        request(resource: CatResource.catList, type: [Cat].self, errorType: ErrorResponse.self)
    }
}
