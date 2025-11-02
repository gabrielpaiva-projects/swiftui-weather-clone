//
//  AppFeature.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import ComposableArchitecture

@Reducer
struct AppFeature {
    @ObservableState
    struct State: Equatable {
        var weather = WeatherFeature.State()
    }
    
    enum Action {
        case weather(WeatherFeature.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.weather, action: /.weather) {
            WeatherFeature()
        }
    }
}
