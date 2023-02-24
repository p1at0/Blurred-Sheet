//
//  ContentView.swift
//  ClearBackground
//
//  Created by Abdulla on 22.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isPreviewing = false
    var body: some View {
        VStack {
            Button {
                isPreviewing.toggle()
            } label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Tap Me")
                    .blurredSheet(.init(.ultraThinMaterial), show: $isPreviewing) {
                        
                    } content: {
                        Text("This is a transparent background sheet.")
                    }
                
            }
        }
        .background(isPreviewing ? Color.pink : Color.red) // change background color based on isPreviewing state
            .cornerRadius(10) // add corner radius for visual appeal
            .padding()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
