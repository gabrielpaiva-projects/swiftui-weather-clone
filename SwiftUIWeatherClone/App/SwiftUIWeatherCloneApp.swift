//
//  SwiftUIWeatherCloneApp.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct SwiftUIWeatherCloneApp: App {
    let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: store)
        }
    }
}
