//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol ElementaryControl: SKSpriteNode {
    
    static func setupForElementaryControl(fileNamed: String, with color: SKColor?, and label: String, command: commandConstants) -> ElementaryControl
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, command: commandConstants)
}

extension ElementaryControl {
    
    static func setupForElementaryControl(fileNamed: String, with color: SKColor?, and label: String, command: commandConstants) -> ElementaryControl {
        guard let controlScene = SKScene(fileNamed: fileNamed) else {
            fatalError("Could not load scene named: \(fileNamed)")
        }
        guard let control = controlScene.childNode(withName: "Control") as? ElementaryControl else {
            fatalError("Could not find control in: \(fileNamed) scene.")
        }
            
        controlScene.enumerateChildNodes(withName: "//*") { (node, _) in
            if !(node is SKLabelNode) {
                node.isPaused = false
                node.isUserInteractionEnabled = true
            }
        }
        control.zPosition = 10
        control.removeFromParent()
        
        control.specificSetupForElementaryControl(with: label, with: color, command: command)
        return control
    }
    
    
}
