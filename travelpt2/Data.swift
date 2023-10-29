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

class Person {
  var name: String
  var password: String
    init(name: String, password: String) {
      self.name = name
      self.password = password
    }

  func getName() -> String {
    return self.name
  }

  func getPass() -> String {
    return self.password
  }
}

class Trip {
  var people: [Person] = []
  var expenses: [Expense] = []
  var events: [Event] = []
  var name: String
  init (name: String) {
    self.name = name
  }
  func addPerson(_ person: Person) {
      people.append(person)
  }
  func addExpense (_ expense: Expense) {
    expenses.append(expense)
  }
  func addEvent(_ event: Event) {
    events.append(event)
  }
  func getPeople() -> [Person] {
    return self.people
  }
  func getExpenses() -> [Expense] {
    return self.expenses
  }
  func getEvents() -> [String] {
      return self.events.map { "\($0.getName()) at \($0.getTime())" }
  }

}

class Expense {
  var name: String
  var cost: Int

  init(name: String, cost: Int) {
    self.name = name
    self.cost = cost
  }

  func getName() -> String {
    return self.name
  }

  func getCost() -> Int {
    return self.cost
  }
}


class Event {
  var name: String
  var time: String
  public var description: String { return "\(name)" }
  init(name: String, time: String) {
    self.name = name
    self.time = time
  }
  func getName() -> String {
    return self.name
  }
  func getTime() -> String {
    return self.time
  }
}
