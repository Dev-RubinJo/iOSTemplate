//
//  BaseVCProtocol.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

@objc protocol BaseVCProtocol {
    
    func initVC()
    
    /// 라이트모드에서의 세팅 메서드
    @objc optional func setLightModeUI()
    
    /// 다크모드를 안쓰는 화면이 있을 수 있기에 optional func로 선언
    @objc optional func setDarkModeUI()
    
    /// 시스템 모드를 따라가는 메서드
    @objc optional func setSystemColorModeUI()
    
    /// 최종 테마에 따라 화면 테마 적용하는 메서드
    @objc optional func setColorModeUI()
}
