//
//  NetworkService.swift
//  KhanRestaurantFinder
//
//  Created by Omer Khan on 3/5/19.
//  Copyright © 2019 Omer Khan. All rights reserved.
//

import Foundation
import Moya


private let apiKey = "I6Rolo5hIeWX93g5F4n5hD6YsDua2V2SGs90gpfb5Xrxt0HeXrm0RHmez3S7vXocuk_YaySoMQAEwcpbjcnZ0RQzb4fgqvLKJfCWjM3cEaKo2Q2es0KTVcdB7EmzXnYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }

        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }

        var method: Moya.Method {
            return .get
        }

        var sampleData: Data {
            return Data()
        }

        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(
                    parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
            
        }

        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
}
