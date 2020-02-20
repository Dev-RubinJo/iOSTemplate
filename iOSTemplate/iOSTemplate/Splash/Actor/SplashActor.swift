//
//  SplashActor.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class SplashActor: SplashActorDelegate {
    
    static let shared = SplashActor()
    private init() {}
    
    weak var view: SplashVCRouterDelegate?
    weak var dataManager: SplashDataManagerDelegate?
    
    func didLoadSplash(splashVC vc: SplashVC) {
        guard let token = UserDefaults.standard.value(forKey: "LoginToken") as? String else {
            
            DispatchQueue.main.async {
                self.presentAlertServerErrorToVC(toVC: vc)
            }
            return
        }
         self.dataManager?.checkToken(fromVC: vc, token)
    }
    
    func validToken() {
        self.view?.presentMainVC()
    }
    
    func presentAlertTokenErrorToVC(toVC vc: SplashVC, message: String) {
        vc.presentAlert(title: "TOKEN_ERROR_TITLE".localized, message: message)
    }
    
    func presentAlertServerErrorToVC(toVC vc: SplashVC) {
        vc.presentAlert(title: "SERVER_ERROR_TITLE".localized, message: "SERVER_ERROR_MESSAGE".localized)
    }
}
