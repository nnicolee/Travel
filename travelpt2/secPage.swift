//
//  secPage.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//

import SwiftUI

struct secPageItem: Identifiable {
    let id = UUID()
    var name: String
    var isCompleted: Bool = false
}

struct secPage: View {
    @State private var bucketList: [secPageItem] = []
    @State private var newItemName = ""

    var body: some View {
        VStack {
            Text("My Bucket List")
                .font(.largeTitle)
                .padding()

            List {
                ForEach(bucketList) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        if item.isCompleted {
                            Image(systemName: "checkmark.circle.fill")
                        }
                    }
                }
                .onDelete(perform: deleteItem)
            }

            HStack {
                TextField("Add new item", text: $newItemName)
                Button("Add") {
                    if !newItemName.isEmpty {
                        bucketList.append(secPageItem(name: newItemName))
                        newItemName = ""
                    }
                }
            }
            .padding()

            Spacer()
        }
    }

    func deleteItem(at offsets: IndexSet) {
        bucketList.remove(atOffsets: offsets)
    }
}

struct secPage_Previews: PreviewProvider {
    static var previews: some View {
        secPage()
    }
}


//struct secPage: View {
//    var name: String
//    var date: Date
//    var numberOfFriends: Int
//    var budget: Double
//
//    var body: some View {
//        Text("Welcome, \(name)! You have \(numberOfFriends) friends and a budget of $\(budget, specifier: "%.2f").")
//            .padding()
//    }
//}
//
//struct secPage_Previews: PreviewProvider {
//    static var previews: some View {
//        secPage(name: "John Doe", date: Date(), numberOfFriends: 5, budget: 1000.0)
//    }
//}
