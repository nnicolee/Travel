//
//  Expense.swift
//  travelpt2
//
//  Created by Dillon Semin on 10/28/23.
//

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

