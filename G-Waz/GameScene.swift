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
        setupSceneSize()
        
        setupLayers()
    }
    
    
    
    
    
    //MARK:- SETUPS
    /**
     Set scene size to match the screen size in points to enable accurate positionning of nodes.
     */
    func setupSceneSize() {
        size = UIScreen.main.bounds.size
    }
    
    func setupLayers() {
        // Create layers
        cameraNode = SKCameraNode()
        camera = cameraNode
        addChild(cameraNode)
        
        foreGround = ForeGround(view: view!)
        cameraNode.addChild(foreGround)
        
        // Setup layers and nodes in layers' positions
    }
    
    
}
