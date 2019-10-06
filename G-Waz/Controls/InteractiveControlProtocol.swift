//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol InteractiveControl: SKSpriteNode {
    func setupForInteractiveControl()
    
    func specificSetupForInteractiveControl()
}

extension InteractiveControl {
    func setupForInteractiveControl() {
        isPaused = false
        isUserInteractionEnabled = true
        zPosition = 100
        
        specificSetupForInteractiveControl()
    }
    
    
}
