//
//  Token.swift
//  CryptoList
//
//  Created by Guilherme Feitosa on 29/11/23.
//

import Foundation

struct Token: Codable {
    let id: String
    let symbol: String?
    let name: String?
    let image: String?
    let currentPrice: Double?
    
    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case image
        case currentPrice = "current_price"
    }

}
