//
//  loginTextFields.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-09.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class loginTextFields: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTextField()
    }
    
    func setupTextField(){
        print("CALLED THIS!")
        //self.placeholder = "HI"
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .clear
    
        
        
//        usernameTextField.placeholder = " Username or Email"
//        usernameTextField.layer.borderWidth = 1
//        usernameTextField.layer.borderColor = UIColor.black.cgColor
//        usernameTextField.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        
    }
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
