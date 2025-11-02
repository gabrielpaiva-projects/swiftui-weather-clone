//
//  WeatherView.swift
//  SwiftUIWeatherClone
//
//  Created by Gabriel Paiva on 01/11/25.
//

import SwiftUI
import ComposableArchitecture

struct WeatherView: View {
    let store: StoreOf<WeatherFeature>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            ZStack {
                // Background gradient that matches iOS Weather app
                LinearGradient(
                    colors: [
                        Color.blue.opacity(0.8),
                        Color.blue.opacity(0.4)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack {
                    Text("SwiftUI Weather Clone")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("Em desenvolvimento")
                        .font(.title2)
                        .foregroundColor(.white.opacity(0.8))
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    WeatherView(
        store: Store(initialState: WeatherFeature.State()) {
            WeatherFeature()
        }
    )
}
