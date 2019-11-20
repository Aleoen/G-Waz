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
    
    func operateCommand(command: commandConstants) {
        switch command {
        case .up:
            physicsBody?.applyForce(CGVector(dx: 0, dy: 1000))
        case .down:
            physicsBody?.applyForce(CGVector(dx: 0, dy: -1000))
        case .right:
            physicsBody?.applyForce(CGVector(dx: 100, dy: 0))
        case .left:
            physicsBody?.applyForce(CGVector(dx: -100, dy: 0))
        default:
            print("No command")
        }
        
        print(command)
    }
    
}
