//
//  secPage.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//
import SwiftUI

struct secPage: View {
    //Variable for the plus icon
    @State var showingNewView = false
    
    
    var datas: [Data] = dataList.datas2
    var newdatas: [Data] = DataList.datas2
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("All Plans")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.vertical)
                
                //CLUB CELLS
                Form {
                    List(datas, id:\.id) { datalol in
                        HStack(spacing: 15) {
                            NavigationLink(destination: PlanDetailView(plan: datalol)) {
                                Image(datalol.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading, spacing: 1) {
                                    Text(datalol.name)
                                        .fontWeight(.bold)
                                        .lineLimit(2)
                                        .minimumScaleFactor(0.75)
                                    
                                    Text(datalol.location)
                                        .foregroundColor(.secondary)
                                    Text(datalol.friends)
                                        .font(.subheadline)
                                    Text(datalol.budget)
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                    .padding(.vertical)
                }
                //Combine directory list and new clubs list
                List(newdatas, id:\.id) { data in
                    HStack(spacing: 15) {
                        NavigationLink(destination: PlanDetailView(plan: data)) {
                            
                            Image(data.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 1) {
                                Text(data.name)
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.75)
                                
                                Text(data.location)
                                
                                Text(data.friends)
                                    .foregroundColor(.secondary)
                                
                                Text(data.budget)
                                    .font(.subheadline)
                            }
                            
                        }
                        
                    }
                    .padding(.vertical)
                }
            }
        
                .scrollContentBackground(.hidden)

            }
            .listStyle(.plain)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .scrollIndicators(.hidden)
        }
    }


struct secPage_Previews: PreviewProvider {
    static var previews: some View {
        secPage()
    }
}
//import SwiftUI
//
//struct secPageItem: Identifiable {
//    let id = UUID()
//    var name: String
//    var isCompleted: Bool = false
//}
//
//struct secPage: View {
//    @State private var bucketList: [secPageItem] = []
//    @State private var newItemName = ""
//
//    var body: some View {
//        VStack {
//            Text("My Bucket List")
//                .font(.largeTitle)
//                .padding()
//
//            List {
//                ForEach(bucketList) { item in
//                    HStack {
//                        Text(item.name)
//                        Spacer()
//                        if item.isCompleted {
//                            Image(systemName: "checkmark.circle.fill")
//                        }
//                    }
//                }
//                .onDelete(perform: deleteItem)
//            }
//
//            HStack {
//                TextField("Add new item", text: $newItemName)
//                Button("Add") {
//                    if !newItemName.isEmpty {
//                        bucketList.append(secPageItem(name: newItemName))
//                        newItemName = ""
//                    }
//                }
//            }
//            .padding()
//
//            Spacer()
//        }
//    }
//
//    func deleteItem(at offsets: IndexSet) {
//        bucketList.remove(atOffsets: offsets)
//    }
//}
//
//struct secPage_Previews: PreviewProvider {
//    static var previews: some View {
//        secPage()
//    }
//}


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
