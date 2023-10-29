//
//  ContentView.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//

import SwiftUI
struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
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
                        TextField("Username", text: $username)
                            .padding()
                            .frame(width:300, height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.black, width: CGFloat(wrongUsername))
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(width:300, height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.black, width: CGFloat(wrongUsername))
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
                        
                       
                    }
                    .navigationBarHidden(true)
                    .padding()
                    
        
      
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

