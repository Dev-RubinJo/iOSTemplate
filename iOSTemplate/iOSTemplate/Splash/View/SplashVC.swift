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
    
    var actor: SplashActorDelegate?

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

