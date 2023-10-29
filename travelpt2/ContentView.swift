//
//  ContentView.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("Color")
                    .ignoresSafeArea()
                    VStack{
                        
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350.0)
                        //.resizable(resizingMode: .stretch) .aspectRatio(contentMode: .fit).frame(height: 400.0)
                        
                        Spacer()
                            .frame(height: 50.0)
                        
                        Spacer()
                            .frame(height: 50.0)
                        NavigationLink(destination: firstPage()) {
                            Text("Log In!")
                            .foregroundColor(Color.white)}
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("Color"))
                        
                        .padding()
                        .background(Color(hue: 0.697, saturation: 0.785, brightness: 0.368))
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .cornerRadius(10)
                        
                       
                    } .padding()
                    
            
                
      
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

