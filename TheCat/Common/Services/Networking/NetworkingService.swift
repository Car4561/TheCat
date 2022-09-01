//
//  NetworkingService.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

import Foundation
import TheCatNetworking

final class NetworkingService {

    var configuration: ClientConfiguration! {
        return makeConfiguration()
    }
    
    // MARK: Private methods
    
    private func makeConfiguration() -> ClientConfiguration {
        let configuration = ClientConfiguration(baseURL: makeHost(),
                                                httpHeaders: makeHeaders())
        
        return configuration
    }
    
    private func makeHost() -> String {
       return Host.baseUrl
    }
    
    private func makeHeaders() -> [String: String] {
        [
            "Content-Type" : "application/json",
            "x-api-key" : "live_3hB9VyJZiGBD4GyBjsAcL4NEWHM4CaYUKZpPm2hOXN9oFjmw2zT9hGTSxxf3SxjE"
        ]
    }
}
