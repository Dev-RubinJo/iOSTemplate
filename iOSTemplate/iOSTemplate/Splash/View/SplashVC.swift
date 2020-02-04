//
//  SplashVC.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class SplashVC: BaseVC, SplashVCDelegate {
    
    @IBOutlet weak var splashVCLabel: UILabel!
    @IBOutlet weak var goToMainButton: UIButton!
    
    static let viewRouter: SplashVCRouterDelegate = SplashVC()
    private let window: UIWindow = UIApplication.shared.windows.first ?? UIWindow.init(frame: UIScreen.main.bounds)
    
    weak var actor: SplashActorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initVC()
        // Do any additional setup after loading the view.
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        self.setDarkModeUI()
    }
    
    func initVC() {
        self.setSplashUI()
        self.setDarkModeUI()
        self.actor?.didLoadSplash(splashVC: self)
    }
    
    func setDarkModeUI() {
        if self.isDarkMode {
            self.view.backgroundColor = UIColor(hex: ColorPalette.blackMain, alpha: 1.0)
            self.splashVCLabel.textColor = .white
            self.goToMainButton.setTitleColor(.white, for: .normal)
        } else {
            self.view.backgroundColor = .white
            self.splashVCLabel.textColor = .black
            self.goToMainButton.setTitleColor(.blue, for: .normal)
        }
    }
}
extension SplashVC: SplashVCRouterDelegate {
    func makeSplashVC() -> SplashVC {
        let vc = SplashVC()
        let actor = SplashActor.shared
        let dataManager = SplashDataManager.shared
        
        vc.actor = actor
        actor.view = vc
        actor.dataManager = dataManager
        dataManager.actor = actor
        
        return vc
    }
    
    func presentMainVC() {
        let mainVC = MainVC.viewRouter.makeMainVC()
        self.window.rootViewController = mainVC
        self.window.makeKeyAndVisible()
    }
    
    
}
