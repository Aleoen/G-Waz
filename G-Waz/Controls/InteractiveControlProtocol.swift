//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol InteractiveControl: SKSpriteNode {
    static func setupForInteractiveControl(scene: SKScene?, fileNamed: String, with color: SKColor, and label: String) -> InteractiveControl
    
    func specificSetupForInteractiveControl()
}

extension InteractiveControl {
    static func setupForInteractiveControl(scene: SKScene?, fileNamed: String, with color: SKColor, and label: String) -> InteractiveControl {
        guard let scene = scene else {
            fatalError("SKScene is nil")
        }
        guard let controlScene = SKScene(fileNamed: fileNamed) else {
            fatalError("Could not load scene named: \(fileNamed)")
        }
        guard let control = controlScene.childNode(withName: "Control") as? InteractiveControl else {
            fatalError("Could not find control in: \(fileNamed)")
        }
        
        control.isPaused = false
        control.isUserInteractionEnabled = true
        control.zPosition = 100
        control.color = color
        
        if let labelNode = control.childNode(withName: "Label") as? SKLabelNode{
            labelNode.text = label
        }
        
        control.specificSetupForInteractiveControl()
        
        control.removeFromParent()
        scene.addChild(control)
        
        return control
    }
    
    
}
