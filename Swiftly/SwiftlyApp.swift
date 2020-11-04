//
//  SwiftlyApp.swift
//  Swiftly
//
//  Created by Conny Hakansson on 2020-11-03.
//

import SwiftUI

@main
struct SwiftlyApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
