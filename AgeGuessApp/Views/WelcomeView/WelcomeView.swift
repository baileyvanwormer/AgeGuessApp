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
            
            NavigationLink {
                AgeGuessView()
            } label: {
                Text("Get Started")
                    .foregroundColor(.black)
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 200)
                            )
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
