//
//  Button.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class Button: SKSpriteNode, ElementaryControl {
    var label: String!
    
    
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?) {
        self.label = label
        
        if let color = color {
            run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
        }
        if let labelNode = childNode(withName: "Label") as? SKLabelNode{
            labelNode.text = label
        }
    }
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let scaleIn = SKAction.scale(by: 0.8, duration: 0.05)
        let scaleOut = scaleIn.reversed()
        let touchedAction = SKAction.sequence([scaleIn,scaleOut])
        
        print("Touched \(label!)")
        
        run(touchedAction)
    }
    
    
    
}
