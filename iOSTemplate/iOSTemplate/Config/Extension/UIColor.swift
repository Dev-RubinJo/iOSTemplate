//
//  UIColor.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

extension UIColor {
    /**
     꼭 Assets.xcassets에 컬러를 넣어주고 강제 언래핑을 해줘야한다.
     */
    
    static let blackMain: UIColor = UIColor(named: "BackgroundMain")!
    static let grayDarkMain: UIColor = UIColor(named: "GrayDarkMain")!
    static let graySoftMain: UIColor = UIColor(named: "GraySoftMain")!
    static let yellowMain: UIColor = UIColor(named: "YellowMain")!
    
    static let borderDark: UIColor = UIColor(named: "BorderDark")!
    static let borderSoft: UIColor = UIColor(named: "BorderSoft")!
    
    convenience init(hex: UInt, alpha: CGFloat) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
