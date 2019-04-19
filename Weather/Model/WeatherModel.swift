//
//  WeatherModel.swift
//  Weather
//
//  Created by Alvin Ling on 4/18/19.
//  Copyright © 2019 iOSPlayground. All rights reserved.
//

import Foundation

// MARK: - Main Weather Models

struct CurrentWeather: Codable {
    let info: [Info]
    let temp: Temp
    let wind: Wind
    let time: Int
    let cityID: Int
    let city: String
    
    enum CodingKeys: String, CodingKey {
        case info = "weather"
        case temp = "main"
        case wind
        case time = "dt"
        case cityID = "id"
        case city = "name"
    }
}

struct DailyWeather: Codable {
    
    let count: Int
    let forecasts: [Forecast]
    let city: City
    
    enum CodingKeys: String, CodingKey {
        case count = "cnt"
        case forecasts = "list"
        case city
    }
}

// MARK: - Weather Info Structs

struct City: Codable {
    let id: Int
    let name: String
    let country: String
}

struct Forecast: Codable {
    let time: Int
    let temp: Temp
    let info: [Info]
    let wind: Wind
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case time = "dt"
        case temp = "main"
        case info = "weather"
        case wind
        case date = "dt_txt"
    }
}

struct Info: Codable {
    let state: String
    let description: String
    let icon: String
    
    enum CodingKeys: String, CodingKey {
        
        case state = "main"
        case description, icon
    }
}

struct Temp: Codable {
    let curr, min, max: Double
    
    enum CodingKeys: String, CodingKey {
        case curr = "temp"
        case min = "temp_min"
        case max = "temp_max"
    }
}

struct Wind: Codable {
    let speed, deg: Double
}