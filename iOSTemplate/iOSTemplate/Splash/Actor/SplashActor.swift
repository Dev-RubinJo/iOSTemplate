//
//  SplashActor.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class SplashActor: SplashActorDelegate {
    
    // MARK: - Properties
    
    var router: SplashRouterDelegate?
    
    // MARK: - LifeCycle
    
    init() {}
    
    deinit {
        print("SplashActor is deinit")
    }
    
    // MARK: - Helper
    
    func didLoadSplash(splashVC vc: SplashVC) {
        vc.presentAlert(title: "스플래시 표시 완료", message: "스플래시 표시 완료")
    }
    
    func moveToMainVC() {
        router?.presentMainVC()
    }
}
