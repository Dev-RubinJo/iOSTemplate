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
    
    func appearIndicator() {
        self.indicator.show()
    }
    
    func disappearIndicator() {
        self.indicator.dismiss()
    }
}
