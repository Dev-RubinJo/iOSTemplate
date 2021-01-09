//
//  Server.swift
//  iOSTemplate
//
//  Created by YooBin Jo on 2020/03/30.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

struct Server {
    
    static let shared = Server()
    private init() {}
    
    /// Web API를 호출하기 위한 서버 주소
    /// 테스트를 위해 https://reqres.in 에 나와있는 Native JavaScript 예제를 사용
    var api: String {
        get {
            "https://reqres.in/api/product/3"
        }
    }
}
