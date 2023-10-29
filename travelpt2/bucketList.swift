//
//  bucketList.swift
//  travelpt2
//
//  Created by CatherineWang on 10/29/23.
//
import SwiftUI

struct bucketListItem: Identifiable {
    let id = UUID()
    var name: String
    var isCompleted: Bool = false
}

struct bucketList: View {
    @State private var bucketList: [bucketListItem] = []
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
                        bucketList.append(bucketListItem(name: newItemName))
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

struct bucketList_Previews: PreviewProvider {
    static var previews: some View {
        bucketList()
    }
}
