//
//  SplashDataResponse.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import ObjectMapper

/// Splash Data Response
/// code: String! or code: Int!
/// message: String!
struct SplashDataResponse {
    var code: String!
    var message: String!
}
extension SplashDataResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        code <- map["code"]
        message <- map["message"]
    }
}
