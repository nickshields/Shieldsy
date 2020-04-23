//
//  LoginScreenButton.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-10.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class LoginScreenButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupButton()
    }
    
    required init?(coder: NSCoder) {
        //For when shit gets initialized via storyboard
        super.init(coder: coder)
        self.setupButton()
    }
    
    func setupButton(){
        
    }
}
