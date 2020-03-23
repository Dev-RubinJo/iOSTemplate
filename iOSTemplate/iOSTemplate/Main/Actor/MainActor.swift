//
//  MainActor.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class MainActor: MainActorDelegate {

    weak var view: (MainVCDelegate & MainVCRouterDelegate)?
    var dataManager: MainDataManagerDelegate?
    
    func getMainData(needVC vc: MainVC) {
        guard let userId = UserDefaults.standard.value(forKey: "UserId") as? String else {
            
            return
        }
        self.dataManager?.mainDataFetch(originVC: vc, userId: userId)
    }
    
    func updateMainVCData(toVC vc: MainVC) {
        
    }
    
    func presentBasicPopUp(toVC vc: MainVC) {
        let basicPopUpStoryboard = UIStoryboard(name: "BasicPopUp", bundle: Bundle.main/* nil이면 Bundle.main이 들어간다 */)
        guard let basicPopUpView = basicPopUpStoryboard.instantiateViewController(withIdentifier: "BasicPopUp") as? BasicPopUp else {
            return
        }
        basicPopUpView.basicPopUpDelegate = vc as BasicPopUpDelegate
        basicPopUpView.modalPresentationStyle = .custom
        basicPopUpView.modalTransitionStyle = .crossDissolve

        vc.present(basicPopUpView, animated: true, completion: nil)
    }
    
    func presentAlertResponseErrorToVC(toVC vc: MainVC) {
        vc.presentAlert(title: "뭔가 오류", message: "무엇인가 오류입니다")
    }
    
    func presentAlertServerErrorToVC(toVC vc: MainVC) {
        vc.presentAlert(title: "SERVER_ERROR_TITLE".localized, message: "SERVER_ERROR_MESSAGE".localized)
    }
}
