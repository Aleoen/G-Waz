//
//  PadDirection.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 07/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class PadDirection: SKSpriteNode {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Go west!")
        run(SKAction.sequence([
            SKAction.colorize(with: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), colorBlendFactor: 0.5, duration: 0.1),
        ]))
    }
}
