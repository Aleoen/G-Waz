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
    var buttonA: Button!
    
    
    
    override func didMove(to view: SKView) {
        
        setupControls()
    }
    
    
    
    
    
    //MARK:- Setup
    
    func setupControls() {
        buttonA = Button.setupForInteractiveControl(scene: self, fileNamed: "Button", with: SKColor.blue, and: "A") as! Button
        
        
        
        
        
        
    }
    
}
