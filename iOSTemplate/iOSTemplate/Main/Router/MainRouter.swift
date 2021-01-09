//
//  MainRouter.swift
//  iOSTemplate
//
//  Created by YooBin Jo on 2021/01/09.
//  Copyright © 2021 YoobinJo. All rights reserved.
//

import UIKit

class MainRouter: MainRouterDelegate {
    
    // MARK: - Properties
    
    var window: UIWindow? {
        get {
            UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        }
    }
    
    // MARK: LifeCycle
    
    init() {}
    
    deinit {
        print("MainRouter is deinit")
    }
    
    // MARK: Helper
    
    func presentBasicPopUp(toVC vc: MainVC) {
        let basicPopUpStoryboard = UIStoryboard(name: "BasicPopUp", bundle: nil)// nil이면 Bundle.main이 들어간다
        guard let basicPopUpView = basicPopUpStoryboard.instantiateViewController(withIdentifier: "BasicPopUp") as? BasicPopUp else {
            return
        }
        basicPopUpView.basicPopUpDelegate = vc as BasicPopUpDelegate
        basicPopUpView.modalPresentationStyle = .custom
        basicPopUpView.modalTransitionStyle = .crossDissolve
        vc.present(basicPopUpView, animated: true)
    }
    
    func presentSplashVC() {
        let splashStoryboard = UIStoryboard(name: "Splash", bundle: nil)
        guard let splashVC = splashStoryboard.instantiateViewController(withIdentifier: "SplashViewController") as? SplashVC else { return }
        window?.rootViewController = splashVC
        window?.makeKeyAndVisible()
    }
}
