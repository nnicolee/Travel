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
    let date: String
    let friends: String
    let amount: String
}
struct DataList: Identifiable{
    let id = UUID()
    @State private var datas: [Data] = []
    static var datas2: [Data] = []
    
    
    func getDatas() -> [Data] {
        return datas
    }
    
    func addData(imageName: String, name: String, date: String, friends: String, amount: String) {
        let newData = Data(imageName:"uwu", name: name, date: date, friends: friends, amount: amount)
        self.datas.append(newData)
    }
}
//List of directory clubs to make it look realistic LOL
struct dataList {
    static var datas = [
        Data(imageName: "placeholder",
             name: "Joe",
             date: "December 12-23",
             friends: "3",
             amount: "$400"),
        Data(imageName: "placeholder",
             name: "Joe",
             date: "December 12-23",
             friends: "3",
             amount: "$400"),
        Data(imageName: "placeholder",
            name: "Joe",
            date: "December 12-23",
            friends: "3",
            amount: "$400"),
    ]
}




