//
//  MainDataResponse.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import ObjectMapper

struct MainDataResponse {
    var code: String!
    var message: String!
}
extension MainDataResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        code <- map["code"]
        message <- map["message"]
    }
}
