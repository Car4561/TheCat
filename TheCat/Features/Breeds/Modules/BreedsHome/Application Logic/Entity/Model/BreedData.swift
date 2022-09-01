//
//  BreedData.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

import Foundation

struct BreedData: Decodable {
    let name: String
    let date: Date
    let url: String
    let voting: Voting?
}
