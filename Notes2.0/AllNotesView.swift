//
//  AllNotesView.swift
//  Notes2.0
//
//  Created by Brian Son on 5/13/23.
//

import Foundation
import SwiftUI

// struct AllNotesView: View {
//     @State var noteTitle: String = UserDefaults.standard.string(forKey: "noteTitle") ?? ""
//     @State var listNoteTitle: [String] = [""]
//     var body: some View {
        
//         NavigationView {
//             ScrollView{
//                 VStack {
                    
//                     Text("View My Notes")
                    
//                         .font(.largeTitle)
//                         .fontWeight(.bold)
//                         .foregroundColor(.yellow)
//                         .multilineTextAlignment(.center)
                        
//                         .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    
                    


//                     .toolbar {
//                         ToolbarItem(placement: .navigationBarTrailing) {
//                             NavigationLink(destination: NewNoteView()) {
//                                 Text("")
//                                 .font(.title)
//                                 //.fontWeight(.bold)
//                                 .foregroundColor(.yellow)
//                                 .multilineTextAlignment(.center)

//                             //add a plus sign 
//                             Image(systemName: "plus")
//                                 .font(.title)
//                                 .foregroundColor(.yellow)
//                                 .multilineTextAlignment(.center)
//                                 .padding()
//                             }
//                         }
//                     }


                    
                    
//                 }
                
                
//                 .padding()
//                 .background(Color.black)
//             }
//             .padding()
//             .background(Color.black)
//         }
//         .padding()
//         .background(Color.black)
//     }
// }


struct AllNotesView: View {
    @State var noteTitle: String = UserDefaults.standard.string(forKey: "noteTitle") ?? ""
    @State var listNoteTitle: [String] = [""]
    var body: some View {
        
        NavigationView {
            VStack {
                
                Text("View My Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .multilineTextAlignment(.center)
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: NewNoteView()) {
                            Text("")
                            .font(.title)
                            //.fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .multilineTextAlignment(.center)

                        //add a plus sign 
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.yellow)
                            .multilineTextAlignment(.center)
                            .padding()
                        }
                    }
                }
//                List {
//                    ForEach(0..<listNoteTitle.count, id: \.self) { index in
//
//                        //display the title of the note
//                        Text("\(listNoteTitle[index])")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.center)
//                            .padding()
//
//                    }
//                }
//                //change the color of the list to black
//                .listStyle(.plain)
//                .foregroundColor(.black)
//                .padding()
//                .background(Color.black)
                
                List {
                    ForEach(0..<10, id: \.self) { index in
                        
                        //display the title of the note
                        Text("\(noteTitle)")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                    }
                }
                //change the color of the list to black
                .listStyle(.plain)
                .foregroundColor(.black)
                .padding()
                .background(Color.black)
            }
            .padding()
            .background(Color.black)
                
        }
    }
}

struct AllNotesView_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesView()
    }
}
