//
//  ContentView.swift
//  Notes2.0
//
//  Created by Brian Son on 5/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
            
                Text("Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .multilineTextAlignment(.center)
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

                    .padding()
                
                NavigationLink(destination: AllNotesView()) {
                    Text("All Notes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.yellow, lineWidth: 5)
                )

                //Note for the future: We can add a Recently Deleted Page here to access deleted notes?
                
                
            }
            
            .padding()
            .background(Color.black)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
