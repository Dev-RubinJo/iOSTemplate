//
//  BaseVC.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        switch self.isIphone {
        case .iPhone:
            return [.portrait]
        case .iPad:
            return [.portrait, .landscape]
        /// 혹시 모를 기종의 추가를 대비해 적용
        @unknown case _:
            return [.portrait]
        }
    }
    
    func appearIndicator() {
        self.indicator.show()
    }
    
    func disappearIndicator() {
        self.indicator.dismiss()
    }
}
