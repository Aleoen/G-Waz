//
//  GameScene.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 05/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit



class GameScene: SKScene {
    
    
    //MARK:- VARIABLES
    
    var cameraNode: SKCameraNode!
    var foreGround: ForeGround!
//    var middleGround: MiddleGround!
//    var backGround: BackGround!
    
    override func didMove(to view: SKView) {
        setupLayers()
    }
    
    override func update(_ currentTime: TimeInterval) {
        foreGround.controls.updatePosition()
    }
    
    
    
    
    
    //MARK:- SETUPS
    
    func setupLayers() {
        // Create layers
        cameraNode = SKCameraNode()
        cameraNode.position = CGPoint.zero
        addChild(cameraNode)
        camera = cameraNode
        
        foreGround = ForeGround()
        cameraNode.addChild(foreGround)
        
        
        
        // Setup layers and nodes in layers' positions
        
        foreGround.controls.updatePosition()
    }
    
    
}
