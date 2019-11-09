//
//  PadDirection.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 07/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class PadDirection: SKSpriteNode, ElementaryControl {
    
    
    func specificSetupForElementaryControl(with label: String, with color: SKColor?, perform completions: [() -> Void]) {
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(color)
        print("Go west!")
        run(SKAction.sequence([
            SKAction.colorize(with: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), colorBlendFactor: 0.5, duration: 0.1),
            SKAction.colorize(with: self.color, colorBlendFactor: 1, duration: 0.1),
        ]))
    }
}
