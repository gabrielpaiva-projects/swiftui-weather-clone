//
//  AppView.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>
    
    var body: some View {
        WeatherView(
            store: store.scope(
                state: \.weather,
                action: AppFeature.Action.weather
            )
        )
    }
}

#Preview {
    AppView(
        store: Store(initialState: AppFeature.State()) {
            AppFeature()
        }
    )
}
