//
//  Pokemon.swift
//  PokemonCards
//
//  Created by parashar.r.adhikary on 09/02/2021.
//

import Foundation

struct Pokemon: Decodable {
    
    let name: String
    var imageUrl: String?

    let number: String
    
    enum CodingKeys: String, CodingKey{
        case name
        case imageUrl

        case number
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
    
}
