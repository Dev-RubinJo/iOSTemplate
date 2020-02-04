//
//  MainVC.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class MainVC: BaseVC, MainVCDelegate {
    
    @IBOutlet weak var mainVCLabel: UILabel!
    
    static let viewRouter: MainVCRouterDelegate = MainVC()
    
    weak var actor: MainActorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initVC()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.actor?.presentBasicPopUp(toVC: self)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        self.setDarkModeUI()
    }
    
    func initVC() {
        self.setDarkModeUI()
    }
    
    func setDarkModeUI() {
        if self.isDarkMode {
            self.view.backgroundColor = UIColor(hex: ColorPalette.blackMain, alpha: 1.0)
            self.mainVCLabel.textColor = .white
        } else {
            self.view.backgroundColor = .white
            self.mainVCLabel.textColor = .black
        }
    }
}
extension MainVC: MainVCRouterDelegate {
    func makeMainVC() -> MainVC {
        let vc = MainVC()
        let actor = MainActor.shared
        let dataManager = MainDataManager.shared
        
        vc.actor = actor
        actor.view = vc
        actor.dataManager = dataManager
        dataManager.actor = actor
        
        return vc
    }
}
