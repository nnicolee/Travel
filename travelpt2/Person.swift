//
//  Person.swift
//  travelpt2
//
//  Created by Dillon Semin on 10/28/23.
//


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

