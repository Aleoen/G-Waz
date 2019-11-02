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
        
        print(view.frame) // <- Real size of screen
    }
    
    
    
    
    
    //MARK:- SETUPS
    func setupLayers() {
        cameraNode = SKCameraNode()
        camera = cameraNode
        addChild(cameraNode)
        
        foreGround = ForeGround()
        cameraNode.addChild(foreGround)
    }
    
    
}
