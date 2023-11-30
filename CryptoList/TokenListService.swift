//
//  TokenListService.swift
//  CryptoList
//
//  Created by Guilherme Feitosa on 30/11/23.
//

import Foundation

struct TokenListService{
    
    func getTokens() async throws -> [Token] {
        let authToken = "CG-5crpKLosCs13FgZKjgUuV7Cc"
        let currency = "usd"
        
        var url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?x_cg_demo_api_key=\(authToken)&vs_currency=\(currency)")!
        let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode([Token].self, from: data)
        
        return decodedData
    }
    
}
