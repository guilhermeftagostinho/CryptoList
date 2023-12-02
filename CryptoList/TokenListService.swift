//
//  TokenListService.swift
//  CryptoList
//
//  Created by Guilherme Feitosa on 30/11/23.
//

import Foundation

struct TokenListService{
    
    func getTokenList() async throws -> TokenListResponse {
        
        let url = URL(string: "http://54.207.173.246:8090/api/collections/token/records")!
        let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(TokenListResponse.self, from: data)
        
        return decodedData
        
    }
    
    
    //    func postTokenList() async throws {
    //
    //        let url = URL(string: "http://54.207.173.246:8090/api/collections/token/records")!
    //        var request = URLRequest(url: url)
    //        request.httpMethod = "POST"
    //        let token = Token(symbol: "TRX", name: "trosss", image: "", currentPrice: 100)
    ////        let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
    //        let encoder = JSONEncoder()
    //        let encodedData = try! encoder.encode(token)
    //        request.httpBody = encodedData
    //        request.setValue(
    //            "application/json",
    //            forHTTPHeaderField: "Content-Type"
    //        )
    //
    //        let task = URLSession.shared.dataTask(with: request) { data, response, error in
    //            let statusCode = (response as! HTTPURLResponse).statusCode
    //
    //            if statusCode == 200 {
    //                print("SUCCESS")
    //            } else {
    //                print("FAILURE")
    //                print(response!)
    //            }
    //        }
    //        task.resume()
    //    }
    //
    //    func putTokenList() {
    //        let url = URL(string: "http://54.207.173.246:8090/api/collections/token/records/le128tcee865mh1")!
    //        var request = URLRequest(url: url)
    //        request.httpMethod = "PATCH"
    //        let token = Token(symbol: "alterado", name: "alteradotb", image: "", currentPrice: 150)
    ////        let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
    //        let encoder = JSONEncoder()
    //        let encodedData = try! encoder.encode(token)
    //        request.httpBody = encodedData
    //        request.setValue(
    //            "application/json",
    //            forHTTPHeaderField: "Content-Type"
    //        )
    //
    //        let task = URLSession.shared.dataTask(with: request) { data, response, error in
    //            let statusCode = (response as! HTTPURLResponse).statusCode
    //
    //            if statusCode == 200 {
    //                print("SUCCESS")
    //            } else {
    //                print("FAILURE")
    //                print(response!)
    //            }
    //        }
    //        task.resume()
    //
    //    }
    //
    //    func deleteTokenList() {
    //        let url = URL(string: "http://54.207.173.246:8090/api/collections/token/records/u54tm66eaow0ed2")!
    //        var request = URLRequest(url: url)
    //        request.httpMethod = "DELETE"
    //        request.setValue(
    //            "application/json",
    //            forHTTPHeaderField: "Content-Type"
    //        )
    //
    //        let task = URLSession.shared.dataTask(with: request) { data, response, error in
    //            let statusCode = (response as! HTTPURLResponse).statusCode
    //
    //
    //        }
    //        task.resume()
    //
    //    }
    //
    //}
}
