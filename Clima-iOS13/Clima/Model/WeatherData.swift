//
//  WeatherData.swift
//  Clima
//
//  Created by ju3un on 2020/05/27.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: /*Decodable, Encodable*/ Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
}
