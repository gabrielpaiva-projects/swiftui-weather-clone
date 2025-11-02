//
//  WeatherModels.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import Foundation

// MARK: - Weather Data Models

struct WeatherData: Codable, Equatable {
    let temperature: Double
    let condition: WeatherCondition
    let location: String
    let humidity: Int
    let windSpeed: Double
    let uvIndex: Int
    let visibility: Double
    let pressure: Double
    let feelsLike: Double
}

struct ForecastData: Codable, Equatable, Identifiable {
    let id = UUID()
    let date: Date
    let highTemperature: Double
    let lowTemperature: Double
    let condition: WeatherCondition
    let precipitationChance: Int
    
    private enum CodingKeys: String, CodingKey {
        case date, highTemperature, lowTemperature, condition, precipitationChance
    }
}

enum WeatherCondition: String, Codable, CaseIterable {
    case sunny = "sunny"
    case partlyCloudy = "partly_cloudy"
    case cloudy = "cloudy"
    case rainy = "rainy"
    case stormy = "stormy"
    case snowy = "snowy"
    case foggy = "foggy"
    case windy = "windy"
    
    var displayName: String {
        switch self {
        case .sunny:
            return "Ensolarado"
        case .partlyCloudy:
            return "Parcialmente Nublado"
        case .cloudy:
            return "Nublado"
        case .rainy:
            return "Chuvoso"
        case .stormy:
            return "Tempestade"
        case .snowy:
            return "Nevando"
        case .foggy:
            return "Nebuloso"
        case .windy:
            return "Ventoso"
        }
    }
    
    var iconName: String {
        switch self {
        case .sunny:
            return "sun.max.fill"
        case .partlyCloudy:
            return "cloud.sun.fill"
        case .cloudy:
            return "cloud.fill"
        case .rainy:
            return "cloud.rain.fill"
        case .stormy:
            return "cloud.bolt.rain.fill"
        case .snowy:
            return "cloud.snow.fill"
        case .foggy:
            return "cloud.fog.fill"
        case .windy:
            return "wind"
        }
    }
}
