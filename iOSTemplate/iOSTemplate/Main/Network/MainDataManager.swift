//
//  MainDataManager.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class MainDataManager: MainDataManagerDelegate {
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    static let shared = MainDataManager()
    private init() {}
    
    weak var actor: MainActorDelegate?
    
    func mainDataFetch(originVC vc: MainVC, userId: String) {
        Alamofire.request("\(self.appDelegate.baseUrl)/getData/\(userId)", method: .get)
            .validate()
            .responseObject(completionHandler: { (response: DataResponse<MainDataResponse>) in
                switch response.result {
                case .success(let mainDataResponse):
                    if mainDataResponse.code == "100" {
                        self.actor?.updateMainVCData(toVC: vc)
                    } else if mainDataResponse.code == "103" {
                        self.actor?.presentAlertResponseErrorToVC(toVC: vc)
                    }
                    
                case .failure( _):
                    self.actor?.presentAlertServerErrorToVC(toVC: vc)
                }
            })
    }
}
