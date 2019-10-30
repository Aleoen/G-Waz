//
//  ForeGround.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 30/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

/**
Node managing Controls and Head Up Display (HUD)
*/
class ForeGround: SKNode {
    
    //MARK:- Variables
    var controls: SKNode!

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        super.init()
        self.name = "ForeGround"
        
        controls = Controls()
        addChild(controls)
    }
}
