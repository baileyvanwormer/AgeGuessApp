//
//  WelcomeView.swift
//  AgeGuessApp
//
//  Created by Bailey Van Wormer on 9/15/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("AgeGuess")
                .bold()
                .font(.title)
                .padding()
            
            Text("Welcome to AgeGuess!")
            
            Spacer()
            
            Button {
                AgeGuessView()
            } label: {
                Text("Get Started")
            }

            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
