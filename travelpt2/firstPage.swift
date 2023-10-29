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
    let destinations = ["Paris", "New York", "Tokyo", "London", "Rome", "Sydney", "Barcelona", "Dubai", "Rio de Janeiro"]
    @State private var randomDestination: String = ""
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
                   Section(header: Text("Random Destination")) {
                       Text("Destination: \(randomDestination)")
                       Button("Generate Random Destination") {
                           // Generate a random destination
                           if let randomDestination = destinations.randomElement() {
                               self.randomDestination = randomDestination
                           }
                       }
                   }
               }
               .navigationTitle("Plan Your Trip!")
               .navigationBarItems(trailing: NavigationLink("Next", destination: secPage(name: name, date: date, numberOfFriends: numberOfFriends, budget: budget))
           )
            
               
           }
       }
   }

   struct firstPage_Previews: PreviewProvider {
       static var previews: some View {
           firstPage()
       }
   }
