//
//  SplashVC+SetUI.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

extension SplashVC {
    func setSplashUI() {
        self.goToMainButton.addTarget(self, action: #selector(self.didTapGoToMainButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapGoToMainButton(_ sender: UIButton) {
        self.presentMainVC()
    }
}
