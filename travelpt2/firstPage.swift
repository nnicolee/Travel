//
//  firstPage.swift
//  travelpt2
//
//  Created by CatherineWang on 10/28/23.
//
import SwiftUI
struct firstPage: View {

    @State private var type : String = ""
    @State private var name : String = ""
    @State private var date : String = ""
    @State private var friends : String = ""
    @State private var amount : String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Plan a Trip")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            
            Form {
                TextField("Payment Method: ", text: $type)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Name: ", text: $name)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Date: ", text: $date)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("How many friends: ", text: $friends)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Amount: ", text: $amount)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                Button(action: {
                    DataList.datas2.insert(Data(imageName: "placeholder", type: type, name: name, date: date, friends: friends, amount: amount), at: 0)
    
                }, label: {
                   Text("Create Club")
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)
                //Di sables button until all fields are filled
                .disabled(type.isEmpty || name.isEmpty || date.isEmpty || friends.isEmpty || amount.isEmpty)
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
