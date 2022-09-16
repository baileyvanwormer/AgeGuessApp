//
//  AgeGuessViewModel.swift
//  AgeGuessApp
//
//  Created by Bailey Van Wormer on 9/15/22.
//

import Foundation

final class AgeGuessViewModel: ObservableObject {
    
    @Published var guess: Int = 0
    @Published var name: String = ""
    @Published var count: Int = 0
    
    func apiCall() {
        Task {
            let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.agify.io?name=\(name)")!)
            let decodedResponse = try? JSONDecoder().decode(AgeGuess.self, from: data)
            guess = decodedResponse?.age ?? 0
            count = decodedResponse?.count ?? 0
        }
    }
}
