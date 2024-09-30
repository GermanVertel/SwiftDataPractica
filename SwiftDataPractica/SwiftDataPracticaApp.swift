//
//  SwiftDataPracticaApp.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 29/09/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataPracticaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ListModel.self)
    }
}
