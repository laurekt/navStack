//
//  ContentView.swift
//  navStack
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                
                Text("this is the root view 🌱")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
//                NavigationLink(destination: Text("you've arrived to the second view !!")) {
//                    Text("click me :p")
//                        .font(.title2)
//                        .fontWeight(.semibold)
                
                
                    NavigationLink(destination: SecondView()) {
                        Text("click me :D")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                
                
            } //vstack
          
                .toolbar{
                    NavigationLink(destination: ThirdView()) {
                        Text("about")
                        
                        
                    }
                    NavigationLink(destination: FourthView()) {
                        Text("help")
                        
                    }
                    .navigationTitle("home :3")
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationBarBackButtonHidden(true)

                    
                    
                } //toolbar
            
            
            }
        }
        
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
