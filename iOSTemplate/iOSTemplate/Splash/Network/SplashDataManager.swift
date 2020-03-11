//
//  SplashDataManager.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import SwiftyJSON
import Alamofire
import AlamofireObjectMapper

class SplashDataManager: SplashDataManagerDelegate {
    
    private let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    weak var actor: SplashActorDelegate?
    
    func checkToken(fromVC vc: SplashVC, _ token: String) {
        
        let headers = ["Content-Type": "application/json"]
        let parameters: Parameters = ["token": token]
        
        Alamofire.request("\(self.appDelegate!.baseUrl)/api_example", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
        .validate()
            .responseObject(completionHandler: { (response: DataResponse<SplashDataResponse>) in
                switch response.result {
                case .success(let splashDataResponse):
                    if splashDataResponse.code == "100" /* or 200*/ {
                        self.actor?.validToken()
                    } else {
                        // present error Alert
                        self.actor?.presentAlertTokenErrorToVC(toVC: vc, message: splashDataResponse.message)
                    }
                    
                    
                case .failure(let error):
                    print(error)
                }
            })
    }
}
