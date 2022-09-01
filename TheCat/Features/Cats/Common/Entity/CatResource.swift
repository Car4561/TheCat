//
//  CatResource.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 30/08/22.
//

import TheCatNetworking

enum CatResource: Resource {

    case catList

    var resource: (method: HTTPMethod, route: String) {
        switch self {
        case .catList:
            return (.get, "images/search?limit=10")
        }
    }
}
