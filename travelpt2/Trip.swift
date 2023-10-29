//
//  Trip.swift
//  travelpt2
//
//  Created by Dillon Semin on 10/28/23.
//


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
