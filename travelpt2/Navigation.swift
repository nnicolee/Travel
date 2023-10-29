//
//  Navigation.swift
//  travelpt2
//
//  Created by CatherineWang on 10/29/23.
//
import SwiftUI

struct Navigation: View {
    //Plus icon
    @State var showNewScreen: Bool = false
    
    //Switching tabs
    @State private var selectedTab: Tab = .house
    
    init() {
        UITableView.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    if selectedTab == .house {
                        ContentView()
                    }
                    if selectedTab == .calendar {
                        firstPage()
                    }
                    if selectedTab == .plus {
                        secPage()
                    }
                    if selectedTab == .book {
                        bucketList()
                    }
                    if selectedTab == .clipboard {
                        receipt()
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
