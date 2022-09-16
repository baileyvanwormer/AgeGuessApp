//
//  AgeGuessView.swift
//  AgeGuessApp
//
//  Created by Bailey Van Wormer on 9/15/22.
//

import SwiftUI

struct AgeGuessView: View {
    
    @State private var guess: Int = 0
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("\(guess)")
            TextField("Enter name...", text: $name)
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.green)
            Button {
                Task {
                    let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.agify.io?name=\(name)")!)
                    let decodedResponse = try? JSONDecoder().decode(AgeGuess.self, from: data)
                    guess = decodedResponse?.age ?? 0
                }
            } label: {
                Text("Guess Age")
                    .foregroundColor(.black)
            }
        }
    }
}

struct AgeGuessView_Previews: PreviewProvider {
    static var previews: some View {
        AgeGuessView()
    }
}
