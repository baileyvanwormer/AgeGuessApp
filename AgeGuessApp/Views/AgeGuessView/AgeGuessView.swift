//
//  AgeGuessView.swift
//  AgeGuessApp
//
//  Created by Bailey Van Wormer on 9/15/22.
//

import SwiftUI

struct AgeGuessView: View {
    
    @StateObject private var viewModel = AgeGuessViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Your Predicted Age...")
                .font(.title2)
                .bold()
            
            Text("\(viewModel.guess)")
                .font(.system(size: 200))
                .padding()
            
            Text("\(viewModel.count) other people share this name")
            
            Spacer()
            
            Divider()
                .padding()
            
            VStack {
                Text("Enter a name:")
                    .font(.title3)
                    .frame(width: 300, height: 0, alignment: .leading)
                
                TextField("Enter name...", text: $viewModel.name)
                    .font(.title2)
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(.green)
                    .padding()
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
            
            Spacer()
            
            Button {
                viewModel.apiCall()
            } label: {
                Text("Guess Age")
                    .foregroundColor(.black)
                    .font(.title)
                    .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 250, height: 50, alignment: .center)
                            )
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AgeGuessView_Previews: PreviewProvider {
    static var previews: some View {
        AgeGuessView()
    }
}
