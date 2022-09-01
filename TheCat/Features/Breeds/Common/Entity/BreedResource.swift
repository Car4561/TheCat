//
//  BreedResource.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import TheCatNetworking

enum BreedResource: Resource {

    case breedList

    var resource: (method: HTTPMethod, route: String) {
        switch self {
        case .breedList:
            return (.get, "breeds")
        }
    }
}
