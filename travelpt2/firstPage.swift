//
//  firstPage.swift
//  travelpt2
//
//  Created by CatherineWang on 10/28/23.
//
import SwiftUI
struct firstPage: View {
@State private var name: String = ""
    @State private var location: String = ""
    @State private var date: Date = Date()
    @State private var numberOfFriends: Int = 0
    @State private var budget: Double = 0.0
    var body: some View {
           NavigationView {
               Form {
                   Section(header: Text("Trip Information")) {
                       TextField("Name", text: $name)
                       TextField("Destination📍" ,text:$location)
                       DatePicker("Date", selection: $date)
                   }
                   Section(header: Text("Social Details")) {
                       Stepper("Number of Friends: \(numberOfFriends)", value: $numberOfFriends, in: 0...100)
                   }
                   Section(header: Text("Budget")) {
                       TextField("Budget", value: $budget, format: .currency(code: "USD"))
                   }
               }
               .navigationTitle("Plan Your Trip!")
               .navigationBarItems(trailing: NavigationLink("Next", destination: secPage(name: name, date: date, numberOfFriends: numberOfFriends, budget: budget)))
           }
       }
   }

struct firstPage_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}
