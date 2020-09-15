//
//  Server.swift
//  iOSTemplate
//
//  Created by YooBin Jo on 2020/03/30.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

struct Server {
    /// Web API를 호출하기 위한 서버 주소
    private static let _api: String = ""
    
    static var api: String {
        get {
            self._api
        }
    }
}
