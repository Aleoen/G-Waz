//
//  PadDirection.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 07/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class PadDirection: SKSpriteNode, ElementaryControl {
    
    //MARK: - CONSTANTS
    
    let scaleIn = SKAction.scale(to: 0.95, duration: 0.05)
    let scaleOut = SKAction.scale(to: 1.0, duration: 0.05)
    
    //MARK: - SETUP
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, perform completions: [() -> Void]?) {
        if let color = color {
            run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
        }
    }
    
    //MARK:- METHODS
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        run(SKAction.sequence([scaleIn, scaleOut]))
            }
}
