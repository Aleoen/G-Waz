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
        
        setupControls()
    }
    
    
    
    
    
    //MARK:- Setup
    
    func setupControls() {
        Button.setupForInteractiveControl(scene: self, fileNamed: "Button")
    }
    
}
