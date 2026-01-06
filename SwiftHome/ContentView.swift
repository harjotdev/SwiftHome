//
//  ContentView.swift
//  SwiftHome
//
//  Created by Harjot singh on 06/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var message = "I am a programmer"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .foregroundStyle(.tint)
            Text(message)
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            Button("Click Me!") {
                message = "Awesome"
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
