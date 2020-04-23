//
//  LoginTextFieldBackground.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-10.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class UsernameTextFieldBackground: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    func configureView(){
        print("Configuring background view!")
        self.layer.cornerRadius = 5
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
}
