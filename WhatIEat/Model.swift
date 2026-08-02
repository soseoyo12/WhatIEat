//
//  Model.swift
//  WhatIEat
//
//  Created by 송성용 on 7/31/26.
//

import Foundation

struct Menus: Identifiable, Codable {
    let id: String
    let menu: String
}

struct Restaurants: Codable {
    let id: String
    let menu: String
    let restaurantCount: Int
    let restaurants: [Restaurant]
}

struct Restaurant: Codable {
    let id: String
    let name: String
    let category: String
    let address: String
    let latitude: Double
    let longitude: Double
    let distanceM: Int
    let rating: Double?
    let reviewCount: Int
    let menus: [Menu]
    let hours: [Hour]
    let reviews: [Review]
}

struct Hour: Codable {
    let day: String
    let hourOpen: String?
    let lastOrder: String?
    let closed: Bool?
    let hourBreak: String?
    
    enum CodingKeys: String, CodingKey {
        case day, lastOrder, closed
        case hourOpen = "open"
        case hourBreak = "break"
    }
}

struct Menu: Codable {
    let name: String
    let price: Int?
    let description: String?
}

struct Review: Codable {
    let rating: Int
    let text: String
}

func loadJSON() -> [Restaurants] {
    let url = Bundle.main.url(forResource: "restaurants", withExtension: "json")!
    
    let data = try! Data(contentsOf: url)
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    let result = try! decoder.decode([Restaurants].self, from: data)
    print("decode \(result.count)개 로드")
    return result
}
