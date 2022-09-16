//
//  AgeGuess.swift
//  AgeGuessApp
//
//  Created by Bailey Van Wormer on 9/15/22.
//

import Foundation

// Struct for API call info; specifically name and age
struct AgeGuess: Decodable {
    let name: String
    let age: Int
    let count: Int
}
