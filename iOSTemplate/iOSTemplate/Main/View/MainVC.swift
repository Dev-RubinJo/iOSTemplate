//
//  MainVC.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class MainVC: BaseVC, MainVCDelegate {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var mainVCLabel: UILabel!
    
    // MARK: - Properties
    
    var actor: MainActorDelegate?
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        actor?.router?.presentBasicPopUp(toVC: self)
    }
    
    deinit {
        print("MainVC is deinit")
    }
    
    // MARK: - Helper
    
    func configureUI() {
        let actor = MainActor()
        let dataManager = MainDataManager()
        let router = MainRouter()
        
        self.actor = actor
        actor.view = self
        actor.dataManager = dataManager
        actor.router = router
        dataManager.actor = actor
    }
}
// MARK: - Basic PopUp Delegate
extension MainVC: BasicPopUpDelegate {
    
    func pressBasicPopUpYesButton() {
        mainVCLabel.numberOfLines = 2
        mainVCLabel.text = "메인"
//        actor?.router?.presentSplashVC()
        actor?.getMainData(needVC: self)
    }
}
