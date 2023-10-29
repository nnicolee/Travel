//
//  Registry.swift
//  travelpt2
//
//  Created by Dillon Semin on 10/28/23.
//

public class Registry {
  var peopleRegistered: [Person] = []
  init() {}
  func addUser(_ person: Person) {
    peopleRegistered.append(person)
  }
    func checkRegistered(nameInput: String, passInput: String) -> Bool {
        for person in peopleRegistered {
            print("Comparing \(person.getName()) with \(nameInput)")
            print("Comparing \(person.getPass()) with \(passInput)")
            if person.getName() == nameInput && person.getPass() == passInput {
                return true
            }
        }
        return false
    }

    func printRegistered() {
        for person in peopleRegistered {
            print(person.getName() + " " + person.getPass())
        }
    }
}
