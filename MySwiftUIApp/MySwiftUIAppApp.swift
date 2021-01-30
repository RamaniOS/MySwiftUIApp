//
//  MySwiftUIAppApp.swift
//  MySwiftUIApp
//
//  Created by Ramanpreet Singh on 2021-01-30.
//

import SwiftUI

@main
struct MySwiftUIAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
