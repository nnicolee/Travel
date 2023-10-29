//
//  firstPage.swift
//  travelpt2
//
//  Created by CatherineWang on 10/28/23.
//
import SwiftUI
struct firstPage: View {
    
    @State private var name : String = ""
    @State private var location : String = ""
    @State private var friends : String = ""
    @State private var budget : String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create Plan")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            Form {
                TextField("name", text: $name)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("location", text: $location)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("friends", text: $friends)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("budget", text: $budget)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                Button(action: {
                    dataList.datas2.insert(Data(imageName: "placeholder", name: name, location: location, friends: friends, budget: budget), at: 0)
    
                }, label: {
                   Text("Create Plan")
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)
                //Di sables button until all fields are filled
                .disabled(name.isEmpty || location.isEmpty || friends.isEmpty || budget.isEmpty)
            }
            .scrollContentBackground(.hidden)
            
        }
    }
    
}

struct firstPage_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}


















//struct firstPage: View {
//@State private var name: String = ""
//    @State private var location: String = ""
//    @State private var date: Date = Date()
//    @State private var numberOfFriends: Int = 0
//    @State private var budget: Double = 0.0
//    let destinations = ["Paris", "New York", "Tokyo", "London", "Rome", "Sydney", "Barcelona", "Dubai", "Rio de Janeiro"]
//    @State private var randomDestination: String = ""
//    var body: some View {
//           NavigationView {
//               Form {
//                   Section(header: Text("Trip Information")) {
//                       TextField("Name", text: $name)
//                       TextField("Destination📍" ,text:$location)
//                       DatePicker("Date", selection: $date)
//                   }
//                   Section(header: Text("Social Details")) {
//                       Stepper("Number of Friends: \(numberOfFriends)", value: $numberOfFriends, in: 0...100)
//                   }
//                   Section(header: Text("Budget")) {
//                       TextField("Budget", value: $budget, format: .currency(code: "USD"))
//                   }
//                   Section(header: Text("Random Destination")) {
//                       Text("Destination: \(randomDestination)")
//                       Button("Generate Random Destination") {
//                           // Generate a random destination
//                           if let randomDestination = destinations.randomElement() {
//                               self.randomDestination = randomDestination
//                           }
//                       }
//                   }
//               }
//               .navigationBarItems(trailing: NavigationLink("Next", destination: secPage())
//          )
//
//
//           }
//       }
//   }
//
//   struct firstPage_Previews: PreviewProvider {
//       static var previews: some View {
//           firstPage()
//       }
//   }
//
