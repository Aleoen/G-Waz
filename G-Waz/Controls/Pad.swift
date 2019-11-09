//
//  Pad.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 06/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class Pad: SKSpriteNode, ElementaryControl {
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, perform completions: [() -> Void]) {
        if let color = color {
            enumerateChildNodes(withName: "/Pad*") { (node, _) in
                node.run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
            }
        }
                
    }
}
