//
//  MainActor.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class MainActor: MainActorDelegate {

    // MARK: - Properties
    weak var view: MainVCDelegate?
    var dataManager: MainDataManagerDelegate?
    var router: MainRouterDelegate?
    
    // MARK: - LifeCycle
    
    init() {}
    
    deinit {
        print("MainActor is deinit")
    }
    
    // MARK: - Helper
    
    func getMainData(needVC vc: MainVC) {
        dataManager?.mainDataFetch { [weak self]response in
            switch response.result {
            case .success(let res):
                if response.response?.statusCode == 200 {
                    do {
                        let data = try JSONSerialization.data(withJSONObject: res, options: [])
                        let dataResponse = try JSONDecoder().decode(MainDataResponse.self, from: data)
                        print(dataResponse)
                    } catch {
                        print("DEBUG: Error is \(error.localizedDescription)")
                        dump(error)
                    }
                }
                
            case .failure(let error):
                dump(error)
                self?.presentAlertServerErrorToVC(toVC: vc)
            }
        }
    }
    
    func presentAlertResponseErrorToVC(toVC vc: MainVC) {
        vc.presentAlert(title: "뭔가 오류", message: "무엇인가 오류입니다")
    }
    
    func presentAlertServerErrorToVC(toVC vc: MainVC) {
        vc.presentAlert(title: "SERVER_ERROR_TITLE".localized, message: "SERVER_ERROR_MESSAGE".localized)
    }
}
