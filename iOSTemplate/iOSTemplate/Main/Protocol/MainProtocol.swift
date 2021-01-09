//
//  MainProtocol.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit
import Alamofire

protocol MainVCDelegate: BaseVCProtocol {
    
    var actor: MainActorDelegate? { get set }
}

protocol MainActorDelegate: class {
    
    var view: MainVCDelegate? { get set }
    
    var dataManager: MainDataManagerDelegate? { get set }
    
    var router: MainRouterDelegate? { get set }
    
    func getMainData(needVC vc: MainVC)
    
    /// 서버 리스폰스가 정상코드가 아닐때,
    /// 상황에 맞게 함수들을 나누는 것이 좋다
    func presentAlertResponseErrorToVC(toVC vc: MainVC)
    
    // 서버 통신간 에러가 났을 때
    func presentAlertServerErrorToVC(toVC vc: MainVC)
}

protocol MainDataManagerDelegate: class {
    
    var actor: MainActorDelegate? { get set }
    
    func mainDataFetch(completion: @escaping (AFDataResponse<Any>) -> Void)
}

protocol MainRouterDelegate: class {
    
    var window: UIWindow? { get }
    
    func presentBasicPopUp(toVC vc: MainVC)
    
    func presentSplashVC()
}
