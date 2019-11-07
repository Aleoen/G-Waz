//
//  InteractiveControlsProtocol.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

protocol InteractiveControl: SKSpriteNode {
    
    static func setupForInteractiveControl(fileNamed: String, with color: SKColor?, and label: String) -> InteractiveControl
    
    func specificSetupForInteractiveControl(with label: String, with color: SKColor?)
}

extension InteractiveControl {
    
    static func setupForInteractiveControl(fileNamed: String, with color: SKColor?, and label: String) -> InteractiveControl {
        guard let controlScene = SKScene(fileNamed: fileNamed) else {
            fatalError("Could not load scene named: \(fileNamed)")
        }
        guard let control = controlScene.childNode(withName: "Control") as? InteractiveControl else {
            fatalError("Could not find control in: \(fileNamed) scene.")
        }
                
        controlScene.enumerateChildNodes(withName: "//*") { (node, _) in
            node.isPaused = false
            node.isUserInteractionEnabled = true
        }
        control.zPosition = 10
        control.removeFromParent()
        
        control.specificSetupForInteractiveControl(with: label, with: color)
        return control
    }
    
    
}
