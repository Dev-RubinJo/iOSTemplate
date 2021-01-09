//
//  BasicPopUp.swift
//  iOSTemplate
//
//  Created by YoobinJo on 2020/02/04.
//  Copyright © 2020 YoobinJo. All rights reserved.
//

import UIKit

class BasicPopUp: BaseVC, PopUpProtocol {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var basicPopUpView: UIView!
    @IBOutlet weak var basicPopUpYesButton: UIButton!
    @IBOutlet weak var basicPopUpNoButton: UIButton!
    @IBOutlet weak var outsideView: UIView!
    
    // MARK: - Properties
    
    weak var basicPopUpDelegate: BasicPopUpDelegate?
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePopUpUI()
    }
    
    // MARK: - Selector
    
    @objc fileprivate func didTapBasicPopUpYesButton(_ sender: UIButton) {
        basicPopUpDelegate?.pressBasicPopUpYesButton()
        dismiss(animated: true, completion: nil)
    }
    
    @objc fileprivate func didTapBasicPopUpNoButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @objc fileprivate func didTapOutsideView(_ sender: UIView) {
        dismiss(animated: false, completion: nil)
    }
    
    // MARK: - Helper
    
    func configurePopUpUI() {
        basicPopUpView.layer.cornerRadius = 10
        
        basicPopUpYesButton.addTarget(self, action: #selector(self.didTapBasicPopUpYesButton(_:)), for: .touchUpInside)
        basicPopUpNoButton.addTarget(self, action: #selector(self.didTapBasicPopUpNoButton(_:)), for: .touchUpInside)
        
        let outsideViewGesture = UITapGestureRecognizer(target: self, action: #selector(self.didTapOutsideView(_:)))
        outsideView.isUserInteractionEnabled = true
        outsideView.addGestureRecognizer(outsideViewGesture)
    }
}
