//
//  Double+TemperatureConversion.swift
//  Weather
//
//  Created by Justin on 4/3/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import Foundation

extension Double {
    var kelvinToFahrenheit: Double {
        return (9.0 / 5) * (self - 273) + 32
    }
}
