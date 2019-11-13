//
//  Ship.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 11/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class Ship: SKSpriteNode {
    
    //MARK:- CONSTANTS
    
    //MARK:- VARIABLES
    
    //MARK:- SETUPS
    
    static func setup() -> Ship {
        guard let shipScene = SKScene(fileNamed: "Ship") else { fatalError("Cannot locate Ship.sks file.")}
        guard let ship = shipScene.childNode(withName: "Ship") else { fatalError("Cannot extract Ship node from scene.")}
        ship.removeFromParent()
        
        // shipNode = ship as! Ship
        return ship as! Ship
    }
    
    //MARK:- METHODS
    
    
}
