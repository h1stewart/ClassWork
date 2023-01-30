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
            Text("What's So Funny 'Bout")
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
            HStack{
                Button("Peace") {
                    imagePic = "peacesign"
                    messageString = "Peace"
                }
                Button("Love") {
                    imagePic = "heart"
                    messageString = "Love"
                }
                Button("Understanding") {
                    imagePic = "lightbulb"
                    messageString = "Understanding"
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
