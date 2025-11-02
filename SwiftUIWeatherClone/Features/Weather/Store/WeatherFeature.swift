//
//  WeatherFeature.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import Foundation
import ComposableArchitecture

@Reducer
struct WeatherFeature {
    @ObservableState
    struct State: Equatable {
        var isLoading = false
        var currentWeather: WeatherData?
        var forecast: [ForecastData] = []
        var errorMessage: String?
    }
    
    enum Action {
        case loadWeatherData
        case weatherDataLoaded(WeatherData)
        case forecastDataLoaded([ForecastData])
        case loadingFailed(String)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .loadWeatherData:
                state.isLoading = true
                state.errorMessage = nil
                return .none
                
            case .weatherDataLoaded(let weatherData):
                state.isLoading = false
                state.currentWeather = weatherData
                return .none
                
            case .forecastDataLoaded(let forecast):
                state.forecast = forecast
                return .none
                
            case .loadingFailed(let error):
                state.isLoading = false
                state.errorMessage = error
                return .none
            }
        }
    }
}
