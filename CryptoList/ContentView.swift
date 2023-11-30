//
//  ContentView.swift
//  CryptoList
//
//  Created by Guilherme Feitosa on 29/11/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Button") {
                Task{
                    do{
                        let network = TokensService()
                        let tokens = try await network.getTokens()
                        print (tokens)
                        
                    } catch {
                        print(error.localizedDescription)
                    }
        
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
