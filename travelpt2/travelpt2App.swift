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

    var body: some Scene {
        WindowGroup {
            Navigation()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
