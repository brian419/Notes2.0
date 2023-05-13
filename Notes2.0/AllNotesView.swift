//
//  AllNotesView.swift
//  Notes2.0
//
//  Created by Brian Son on 5/13/23.
//

import Foundation
import SwiftUI

struct AllNotesView: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
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
                    
                }

                
                .padding()
                .background(Color.black)
            }
            .padding()
            .background(Color.black)
        }
        .padding()
        .background(Color.black)
    }
}

struct AllNotesView_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesView()
    }
}
