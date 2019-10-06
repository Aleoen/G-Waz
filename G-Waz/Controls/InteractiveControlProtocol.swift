//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol InteractiveControl: SKSpriteNode {
    func setupForInteractiveControl(scene: SKScene)
    
    func specificSetupForInteractiveControl()
}

extension InteractiveControl {
    func setupForInteractiveControl(scene: SKScene) {
        isPaused = false
        isUserInteractionEnabled = true
        zPosition = 100
        
        self.removeFromParent()
        scene.addChild(self)
        specificSetupForInteractiveControl()
    }
    
    
}
