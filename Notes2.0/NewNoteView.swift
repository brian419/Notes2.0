//
//  NewNoteView.swift
//  Notes2.0
//
//  Created by Brian Son on 5/13/23.
//

import Foundation
import SwiftUI

struct NewNoteView: View {
    @State var noteTitle: String = UserDefaults.standard.string(forKey: "noteTitle") ?? ""
    @State var listNoteTitle: [String] = [""]
    @State var noteBody: String = ""
    @State var noteDate: Date = Date()
    @State var noteColor: Color = Color.yellow
    @State private var action: Int? = 0    
    var body: some View {
        ScrollView{
            VStack {
                //This is where we will display all the notes

                //NavigationLink(destination: AllNotesView()) {
                NavigationLink(destination: AllNotesView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    Text("")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                }

                Text("New Note")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
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
                        .stroke(Color.black, lineWidth: 5)
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
                        .stroke(Color.black, lineWidth: 5)
                )
                //create a date picker for the date
                DatePicker("Date", selection: $noteDate)
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                //create a color picker for the color
                ColorPicker("Color", selection: $noteColor)
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Button(action: {
                    
                    UserDefaults.standard.set(self.noteTitle, forKey: "noteTitle")
                    self.listNoteTitle.append(self.noteTitle)
                    self.action = 1;

                    
                    
                }
                    
                ) {
                    Text("Save")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                }

                
            }
            
            
            .padding()
            .background(Color.white)
        }
        .padding()
        .background(Color.white)
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
