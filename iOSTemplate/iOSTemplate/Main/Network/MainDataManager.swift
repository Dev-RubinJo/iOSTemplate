//
//  MainDataManager.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import Alamofire

class MainDataManager: MainDataManagerDelegate {
    
    // MARK: - Properties
    
    weak var actor: MainActorDelegate?
    
    // MARK: - LifeCycle
    
    init() {
        
    }
    
    deinit {
        print("MainDataManager is deinit")
    }

    // MARK: - Helper
    
    func mainDataFetch(completion: @escaping (AFDataResponse<Any>) -> Void) {
                
        AF.request("\(Server.shared.api)", method: .get)
            .responseJSON { response in
                completion(response)
            }
    }
}
