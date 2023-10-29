//
//  Data.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//
import SwiftUI
struct Data: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let location: String
    let friends: String
    let budget: String
}
struct DataList: Identifiable{
    let id = UUID()
    @State public var datas: [Data] = []
    static var datas2: [Data] = []
    
    
    func getDatas() -> [Data] {
        return datas
    }
    
    func addData(imageName: String, name: String, location: String, friends: String, budget: String) {
        let newData = Data(imageName:"uwu", name: name, location: location, friends: friends, budget: budget)
        self.datas.append(newData)
    }
}
//List of directory clubs to make it look realistic LOL
struct dataList {
    static var datas2 = [
        Data(imageName: "placeholder",
             name: "Joe",
             location: "hawaii",
             friends: "3",
             budget: "$400"),
        Data(imageName: "placeholder",
             name: "Joe",
             location: "Paris",
             friends: "3",
             budget: "$400"),
        Data(imageName: "placeholder",
            name: "Joe",
             location: "London",
            friends: "3",
            budget: "$400"),
    ]
}

