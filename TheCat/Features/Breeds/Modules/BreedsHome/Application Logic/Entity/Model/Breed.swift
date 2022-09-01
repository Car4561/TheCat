//
//  Breed.swift
//  TheCat
//
//  Created by Carlos Alfredo Llerena Huayta on 31/08/22.
//

struct Breed: Decodable {
    let id: String
    let name: String
    let temperament: String
    let origin: String
    let description: String
    let image: Image?
}

enum Voting: Int, Decodable {
    case noVote = 0
    case like = 1
    case dislike = 2
}

