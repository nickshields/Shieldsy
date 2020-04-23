//
//  stacky.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-09.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class stacky: UIStackView {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addLoginStuff()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func addLoginStuff(){

            //stackView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
            //stackView.bounds = view.bounds //I'm not sure if this does anything
            //stackView.addArrangedSubview(testView)
            
            let loginText = UILabel()
            loginText.text = "Login"
            loginText.textColor = .black
            
            self.addArrangedSubview(loginText)
        self.addArrangedSubview(loginText)
        self.addArrangedSubview(loginText)
        self.addArrangedSubview(loginText)
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
