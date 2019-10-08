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
    var buttonB: Button!
    var buttonC: Button!
    var buttonD: Button!
    
    override func didMove(to view: SKView) {
        
        setupControls()
    }
    
    
    
    
    
    //MARK:- Setup
    
    
    func setupControls() {
        buttonA = Button.setupForInteractiveControl(scene: self, fileNamed: "Button", with: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), and: "A") as? Button
        buttonA.position = CGPoint(x: 0, y: 100)
        
        buttonB = Button.setupForInteractiveControl(scene: self, fileNamed: "Button", with: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), and: "B") as? Button
        buttonB.position = CGPoint(x: 0, y: -100)
        
        buttonC = Button.setupForInteractiveControl(scene: self, fileNamed: "Button", with: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), and: "X") as? Button
        buttonC.position = CGPoint(x: 100, y: 0)
        
        buttonD = Button.setupForInteractiveControl(scene: self, fileNamed: "Button", with: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), and: "Y") as? Button
        buttonD.position = CGPoint(x: -100, y: 0)
        
        
        
    }
    
}
