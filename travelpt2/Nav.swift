//
//  Nav.swift
//  travelpt2
//
//  Created by Angie Baik on 10/29/23.
//

import SwiftUI

struct Navigation: View {
    //Plus icon
    @State var showNewScreen: Bool = false
    
    //Switching tabs
    @State private var selectedTab: Tab = .homePage
    
    init() {
        UITableView.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    if selectedTab == .homePage {
                        firstPage()
                    }
                    if selectedTab == .plans {
                        //secPage() FIX THIS THERE IS JUST AN EMPTY SECPAGE
                    }
                }
            }
            
            VStack {
                Spacer()
                newNavbar(selectedTab: $selectedTab)
            }
        }
    }
}


struct NewScreen: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
