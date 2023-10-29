//
//  Event.swift
//  travelpt2
//
//  Created by Dillon Semin on 10/28/23.
//


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
