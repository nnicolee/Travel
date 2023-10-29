//
//  travelpt2App.swift
//  travelpt2
//
//  Created by Nicole Lee on 10/28/23.
//

import SwiftUI

@main
struct travelpt2App: App {
    let persistenceController = PersistenceController.shared
    let registry = Registry()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
