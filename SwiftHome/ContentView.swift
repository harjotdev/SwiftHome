//
//  ContentView.swift
//  SwiftHome
//
//  Created by Harjot singh on 06/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .foregroundStyle(.tint)
            Text("You are awesome!")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
