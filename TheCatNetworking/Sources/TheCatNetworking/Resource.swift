//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 29/08/22.
//

public protocol Resource {
    
    var resource: (method: HTTPMethod, route: String) { get }
}
