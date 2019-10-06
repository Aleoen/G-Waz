//
//  GameScene.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        
        if let scene = SKScene(fileNamed: "Button") {
            if let button = scene.childNode(withName: "Button") as? Button {
                
                //TODO: refactor to Button
                button.removeFromParent()
                button.zPosition = 10
                button.isUserInteractionEnabled = true
                button.isPaused = false
                button.color = SKColor.green
                
                addChild(button)
            }
        }
    }
    
    
}
