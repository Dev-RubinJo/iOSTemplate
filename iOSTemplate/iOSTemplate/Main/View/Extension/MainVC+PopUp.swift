//
//  MainVC+PopUp.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

extension MainVC: BasicPopUpDelegate {
    func pressBasicPopUpYesButton() {
        self.mainVCLabel.numberOfLines = 2
        self.mainVCLabel.text = "메인"
    }
}
