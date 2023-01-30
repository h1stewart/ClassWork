//
//  ContentView.swift
//  TwoButtonChallenge
//
//  Created by Hailey Stewart on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imagePic = ""
    var body: some View {
        
        VStack {
            Text("Elvis Costello")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
                .padding()
            Spacer()
            
            Image(systemName: imagePic)
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 300, height: 300)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            
            
            
            Spacer()
            
            Button("What's So Funnt 'Bout?") {
                switch messageString{
                case "Peace":
                    messageString = "Love"
                    imagePic = "heart"
                case "Love":
                    messageString = "Understanding"
                    imagePic = "lightbulb"
                default:
                    messageString = "Peace"
                    imagePic = "peacesign"

                }
            }
            
            
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
