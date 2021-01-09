//
//  SplashRouter.swift
//  iOSTemplate
//
//  Created by YooBin Jo on 2021/01/09.
//  Copyright © 2021 YoobinJo. All rights reserved.
//

import UIKit

class SplashRouter: SplashRouterDelegate {
    
    // MARK: - Properties
    
    var window: UIWindow? {
        get {
            UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        }
    }
    
    // MARK: - LifeCycle
    
    init() {}
    
    deinit {
        print("SplashRouter is deinit")
    }
    
    // MARK: - Helper
    
    func presentMainVC() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController")
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
    }
}
