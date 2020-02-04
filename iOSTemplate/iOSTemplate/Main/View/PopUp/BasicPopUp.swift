//
//  BasicPopUp.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class BasicPopUp: BaseVC, BasicPopUpProtocol {
    
    @IBOutlet weak var basicPopUpView: UIView!
    @IBOutlet weak var basicPopUpYesButton: UIButton!
    @IBOutlet weak var basicPopUpNoButton: UIButton!
    @IBOutlet weak var outsideView: UIView!
    
    weak var basicPopUpDelegate: BasicPopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setPopUpUI()
    }
    
    func setPopUpUI() {
        self.basicPopUpView.layer.cornerRadius = 10
        
        self.basicPopUpYesButton.addTarget(self, action: #selector(self.didTapBasicPopUpYesButton(_:)), for: .touchUpInside)
        self.basicPopUpNoButton.addTarget(self, action: #selector(self.didTapBasicPopUpNoButton(_:)), for: .touchUpInside)
        
        let outsideViewGesture = UITapGestureRecognizer(target: self, action: #selector(self.didTapOutsideView(_:)))
        self.outsideView.isUserInteractionEnabled = true
        self.outsideView.addGestureRecognizer(outsideViewGesture)
        
    }
}
extension BasicPopUp {
    @objc fileprivate func didTapBasicPopUpYesButton(_ sender: UIButton) {
        self.basicPopUpDelegate?.pressBasicPopUpYesButton()
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc fileprivate func didTapBasicPopUpNoButton(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc fileprivate func didTapOutsideView(_ sender: UIView) {
        self.dismiss(animated: false, completion: nil)
    }
}
