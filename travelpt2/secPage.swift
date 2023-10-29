//
//  secPage.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//

import SwiftUI

struct secPage: View {
    var name: String
    var date: Date
    var numberOfFriends: Int
    var budget: Double
    
    var body: some View {
        Text("Welcome, \(name)! You have \(numberOfFriends) friends and a budget of $\(budget, specifier: "%.2f").")
            .padding()
    }
}

struct secPage_Previews: PreviewProvider {
    static var previews: some View {
        secPage(name: "John Doe", date: Date(), numberOfFriends: 5, budget: 1000.0)
    }
}
