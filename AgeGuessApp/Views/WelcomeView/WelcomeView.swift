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
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .foregroundColor(.primary)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.primary, lineWidth: 1)
                                    .frame(width: 200)
                            )
            }.buttonStyle(PlainButtonStyle())

            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
