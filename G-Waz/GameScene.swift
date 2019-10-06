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
        
        guard let scene = SKScene(fileNamed: "Button"),
            let button = scene.childNode(withName: "Button") as? Button else { return }
        button.setupForInteractiveControl(scene: self)
        
    }
}
