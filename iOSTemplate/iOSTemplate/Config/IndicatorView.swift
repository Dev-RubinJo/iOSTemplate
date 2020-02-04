//
//  IndicatorView.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

open class IndicatorView {
    static let shared = IndicatorView()
    
    let containerView = UIView()
    let activityIndicator = UIActivityIndicatorView()
    
    open func show() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        self.containerView.frame = window.frame
        self.containerView.center = window.center
        self.containerView.backgroundColor = UIColor(hex: 0x000000, alpha: 0.4)
        
        self.activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        self.activityIndicator.style = .whiteLarge
        self.activityIndicator.color = UIColor(hex: ColorPalette.grayDarkMain, alpha: 1.0)
        self.activityIndicator.center = self.containerView.center
        
        self.containerView.addSubview(self.activityIndicator)
        UIApplication.shared.keyWindow?.addSubview(self.containerView)
        
        self.activityIndicator.startAnimating()
    }
    
    open func dismiss() {
        self.activityIndicator.stopAnimating()
        self.containerView.removeFromSuperview()
    }
}
