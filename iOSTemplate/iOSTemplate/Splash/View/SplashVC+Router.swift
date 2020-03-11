//
//  SplashVC+Router.swift
//  iOSTemplate
//
//  Created by YooBin Jo on 2020/03/15.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

extension SplashVC: SplashVCRouterDelegate {
    
    private var window: UIWindow? {
        get {
            UIApplication.shared.windows.first
        }
    }
    
    static func makeSplashVC() -> SplashVC {
        let vc = SplashVC()
        let actor = SplashActor()
        let dataManager = SplashDataManager()
        
        vc.actor = actor
        actor.view = vc
        actor.dataManager = dataManager
        dataManager.actor = actor
        
        return vc
    }
    
    func presentMainVC() {
        let mainVC = MainVC.makeMainVC()
        self.window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
    }
}
