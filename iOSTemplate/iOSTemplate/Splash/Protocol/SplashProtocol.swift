//
//  SplashProtocol.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit
import Alamofire

protocol SplashVCDelegate: class, BaseVCProtocol {
    
    var actor: SplashActorDelegate? { get set }
}

protocol SplashActorDelegate: class {
    
    var router: SplashRouterDelegate? { get set }
    
    func didLoadSplash(splashVC vc: SplashVC)
    
    func moveToMainVC()
}

protocol SplashRouterDelegate: class {
    
    var window: UIWindow? { get }
    
    func presentMainVC()
}
