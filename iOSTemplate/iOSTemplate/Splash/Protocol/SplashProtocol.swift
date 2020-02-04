//
//  SplashProtocol.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

protocol SplashVCDelegate: class, BaseVCProtocol {
    
    var actor: SplashActorDelegate? { get set }
    
    func initVC()
    
    func setDarkModeUI()
}

protocol SplashVCRouterDelegate: class {
    
    func makeSplashVC() -> SplashVC
    
    func presentMainVC()
    
    
}

protocol SplashActorDelegate: class {
    
    var view: (SplashVCDelegate & SplashVCRouterDelegate)? { get set }
    
    var dataManager: SplashDataManagerDelegate? { get set }
    
    func didLoadSplash(splashVC vc: SplashVC)
    
    func validToken()
    
    func presentAlertTokenErrorToVC(toVC vc: SplashVC, message: String)
    
    func presentAlertServerErrorToVC(toVC vc: SplashVC)
}

protocol SplashDataManagerDelegate: class {
    
    var actor: SplashActorDelegate? { get set }
    
    // 스플래시에서는 보통 토큰을 확인하는 API함수를 호출하기때문에 이 부분에 그 함수 호출
    /// - Parameter: viewController, "token: String or Data"
    /// in here I use "token: String"
    func checkToken(fromVC vc: SplashVC, _ token: String)
}
