//
//  SplashVC.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class SplashVC: BaseVC, SplashVCDelegate {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var splashVCLabel: UILabel!
    @IBOutlet weak var goToMainButton: UIButton!
    
    // MARK: - Properties
    
    var actor: SplashActorDelegate?
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        actor?.didLoadSplash(splashVC: self)
    }
    
    deinit {
        print("SplashVC is deinit")
    }
    
    // MARK: - Selector
    
    @objc func didTapGoToMainButton(_ sender: UIButton) {
        actor?.moveToMainVC()
    }
    
    // MARK: - Helper
    
    func configureUI() {
        let actor = SplashActor()
        let router = SplashRouter()
        
        self.actor = actor
        actor.router = router
        
        goToMainButton.addTarget(self, action: #selector(self.didTapGoToMainButton(_:)), for: .touchUpInside)
    }
}

