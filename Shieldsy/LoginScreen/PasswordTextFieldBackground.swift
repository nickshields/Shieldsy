//
//  PasswordTextFieldBackground.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-10.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit

class PasswordTextFieldBackground: UIView {
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
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        addTopBorder(with: .gray, andWidth: 0.5)
    }
    
    func addTopBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: borderWidth)
        addSubview(border)
    }

}
