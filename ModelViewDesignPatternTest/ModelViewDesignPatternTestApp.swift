//
//  ModelViewDesignPatternTestApp.swift
//  ModelViewDesignPatternTest
//
//  Created by David Malicke on 7/8/23.
//

import SwiftUI

@main
struct ModelViewDesignPatternTestApp: App {
    
    @State private var storeModel = StoreModel(webservice: Webservice())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(storeModel)
        }
    }
}
