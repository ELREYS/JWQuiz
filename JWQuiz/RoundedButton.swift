//
//  RoundedButton.swift
//  JWQuiz
//
//  Created by Giuseppe DI LISA on 22.07.17.
//  Copyright © 2017 Giuseppe DI LISA. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 5.0
        layer.masksToBounds = true
        
    }

}
