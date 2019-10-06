//
//  Button.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class Button: SKSpriteNode, InteractiveControl {
    func specificSetupForInteractiveControl() {
        color = SKColor.gray
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let scaleIn = SKAction.scale(by: 0.8, duration: 0.03)
        let scaleOut = scaleIn.reversed()
        let touchedAction = SKAction.sequence([scaleIn,scaleOut])
        
        print("Touched")
        
        run(touchedAction)
    }
    
    
    
}
