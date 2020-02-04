//
//  UIViewController.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// 다크모드인지 아닌지 확인할 수 있도록 하는 프로퍼티
    var isDarkMode: Bool {
        get {
            if #available(iOS 13.0, *) {
                if self.traitCollection.userInterfaceStyle == .dark {
                    // User Interface is Dark
                    return true
                } else {
                    // User Interface is Light
                    return false
                }
            } else {
                return false
            }
        }
    }
    
    /// 인디케이터 뷰 객체(싱글톤 객체) 가져오기
    var indicator: IndicatorView {
        get {
            return IndicatorView.shared
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer =
            UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // MARK: 확인만 뜨는 UIAlertController
    func presentAlert(title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionDone = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(actionDone)
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: 커스텀 버튼과 취소가 뜨는 UIAlertController
    func presentAlertWithAction(title: String, message: String, _ actionCustom: UIAlertAction) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionCancel = UIAlertAction(title: "취소", style: .default, handler: nil)
        alert.addAction(actionCancel)
        alert.addAction(actionCustom)
        self.present(alert, animated: true, completion: nil)
    }
}
