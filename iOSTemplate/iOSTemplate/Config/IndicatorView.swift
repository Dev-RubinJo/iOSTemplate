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
        if #available(iOS 13.0, *) {
            self.activityIndicator.style = UIActivityIndicatorView.Style.large
        } else {
            self.activityIndicator.style = .whiteLarge
        }
        self.activityIndicator.color = .grayDarkMain
        self.activityIndicator.center = self.containerView.center
        
        self.containerView.addSubview(self.activityIndicator)
        if #available(iOS 13.0, *) {
            UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.addSubview(self.containerView)
        } else {
            UIApplication.shared.keyWindow?.addSubview(self.containerView)
        }
        
        self.activityIndicator.startAnimating()
    }
    
    open func dismiss() {
        self.activityIndicator.stopAnimating()
        self.containerView.removeFromSuperview()
    }
}
