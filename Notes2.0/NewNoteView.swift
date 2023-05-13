//
//  NewNoteView.swift
//  Notes2.0
//
//  Created by Brian Son on 5/13/23.
//

import Foundation
import SwiftUI

struct NewNoteView: View {
    @State var noteTitle: String = ""
    @State var noteBody: String = ""
    @State var noteDate: Date = Date()
    @State var noteColor: Color = Color.yellow
    
    var body: some View {
        ScrollView{
            VStack {
                //This is where we will display all the notes
                Text("New Note")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .multilineTextAlignment(.center)
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

                    .padding()
                
                
                
                //display all the notes here
                //we can use a ForEach loop to display all the notes
                //we can use a VStack to display all the notes
                //we can use a ScrollView to display all the notes
                
                //create a textfield for the title
                TextField("Title", text: $noteTitle)
                    .font(.title)
                    .background(.white)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.yellow, lineWidth: 5)
                )

                //create a textfield for the body
                TextField("Body", text: $noteBody)
                    .font(.title)
                    .background(.white)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.yellow, lineWidth: 5)
                )
                //create a date picker for the date
                DatePicker("Date", selection: $noteDate)
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                //create a color picker for the color
                ColorPicker("Color", selection: $noteColor)
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                //create a button to add a new note
                NavigationLink(destination: AllNotesView()) {
                    Text("Save Note")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
            }
            
            
            .padding()
            .background(Color.black)
        }
        .padding()
        .background(Color.black)
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
