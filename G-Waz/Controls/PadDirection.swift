//
//  PadDirection.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 07/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class PadDirection: SKSpriteNode, ElementaryControl {
    
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, perform completions: [() -> Void]?) {
        if let color = color {
            run(SKAction.colorize(with: color, colorBlendFactor: 1.0, duration: 0))
        }
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        run(SKAction.sequence([
            SKAction.colorize(with: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), colorBlendFactor: 0.5, duration: 0.1),
            SKAction.colorize(with: self.color, colorBlendFactor: 1, duration: 0.1),
        ]))
        //FIXME: Color turns to black when repeating clics
    }
}
