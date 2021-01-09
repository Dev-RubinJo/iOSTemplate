//
//  MainDataResponse.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import Foundation

struct MainDataResponse: Codable {
    var data: DataResponse!
}

struct DataResponse: Codable {
    var id: Int!
    var name: String!
    var year: Int!
    var pantoneValue: String!
    
    private enum CodingKeys: String, CodingKey {
        case id, name, year
        case pantoneValue = "pantone_value"
    }
}
