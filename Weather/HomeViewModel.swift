//
//  HomeViewModel.swift
//  Weather
//
//  Created by Justin on 4/3/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import Foundation

class HomeViewModel {
    var weather: Weather?

    // MARK: - Header Strings
    var nameString: String {
        return String(weather?.name ?? "")
    }
    
    var temperatureString: String {
        return displayableFahrenheitTemperature(weather?.temp ?? 0)
    }
    
    // MARK: - Subheader Strings
    var feelsLikeTemperatureString: String {
        return displayableFahrenheitTemperature(weather?.feelsLike ?? 0)
    }
    
    var minTemperatureString: String {
        return displayableFahrenheitTemperature(weather?.minTemperature ?? 0)
    }
    
    var maxTemperatureString: String {
        return displayableFahrenheitTemperature(weather?.maxTemperature ?? 0)
    }
    
    var pressureString: String {
        return String(weather?.pressure ?? 0)
    }
    
    var humidityString: String {
        return String(weather?.humidity ?? 0)
    }
    
    // MARK: - Helpers
    private func displayableFahrenheitTemperature(_ temperatureAsKelvin: Double) -> String {
        return String(format: "%.1f", temperatureAsKelvin.kelvinToFahrenheit) + " °F"
    }
    
    func fetchWeather(for cityId: Int = 5128581, _ completion: @escaping (() -> Void)) {
        NetworkController.fetchWeather(for: cityId) { weather in
            self.weather = weather
            completion()
        }
    }
}
