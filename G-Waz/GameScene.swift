//
//  GameScene.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    //MARK:- Variables
    var foreGround: ForeGround!
    
    
    
    override func didMove(to view: SKView) {
        
        setupLayers()
    }
    
    
    
    
    
    //MARK:- Setup
    func setupLayers() {
        foreGround = ForeGround()
        addChild(foreGround)
    }
    
    
}
