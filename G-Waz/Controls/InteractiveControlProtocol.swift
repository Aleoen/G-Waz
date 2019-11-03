//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol InteractiveControl: SKSpriteNode {
    
    static func setupForInteractiveControl(parentNode: SKNode?, fileNamed: String, with color: SKColor, and label: String) -> InteractiveControl
    
    func specificSetupForInteractiveControl(with label: String)
}

extension InteractiveControl {
    
    
    //FIXME: Dont call the scene BUT the SKNode
    static func setupForInteractiveControl(parentNode: SKNode?, fileNamed: String, with color: SKColor, and label: String) -> InteractiveControl {
        guard let parentNode = parentNode else {
            fatalError("parentNode is nil")
        }
        guard let controlScene = SKScene(fileNamed: fileNamed) else {
            fatalError("Could not load scene named: \(fileNamed)")
        }
        guard let control = controlScene.childNode(withName: "Control") as? InteractiveControl else {
            fatalError("Could not find control in: \(fileNamed) scene.")
        }
        
        control.isPaused = false
        control.isUserInteractionEnabled = true
        control.zPosition = 100
        control.run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
        
        if let labelNode = control.childNode(withName: "Label") as? SKLabelNode{
            labelNode.text = label
        }
        
        control.specificSetupForInteractiveControl(with: label)
        
        control.removeFromParent()
        parentNode.addChild(control)
        
        
        print("InteractiveControl named: \(parentNode.name!) and labeled: \(label) added.")
        return control
    }
    
    
}
