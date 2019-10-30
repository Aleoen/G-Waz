//
//  JoystickControls.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 10/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit


/**
 Node managing buttons and joysticks
 */
class Controls : SKNode {
    var buttons: [Button] = [Button]()
    

    override init() {
        super.init()
        name = "Controls"
        
        let buttonA = Button.setupForInteractiveControl(parentNode: self, fileNamed: "Button", with: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), and: "A") as? Button
        buttonA?.position = CGPoint(x: 0, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
