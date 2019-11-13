//
//  Button.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class Button: SKSpriteNode, ElementaryControl {
    
    // MARK:- CONSTANTS
    
    let scaleIn = SKAction.scale(by: 0.8, duration: 0.05)
    let scaleOut = SKAction.scale(by: 1.25, duration: 0.05)
    let waterSound = SKAction.playSoundFileNamed("Aqua_ButtonPress.wav", waitForCompletion: false)
    
    
    // MARK:- VARIABLES
    
    var label: String!
    var command: commandConstants!
    
    //MARK: SETUP
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, command: commandConstants) {
        self.label = label
        self.command = command
        
        if let color = color {
            run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
        }
        if let labelNode = childNode(withName: "Label") as? SKLabelNode{
            labelNode.text = label
        }
    }
    
    
    
    
    //MARK: METHODS
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        run(scaleIn)
        run(waterSound)
        
        (scene as! GameScene).middleGround.ship.operateCommand(command: command)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        run(scaleOut)
    }
    
    
    
    
}
