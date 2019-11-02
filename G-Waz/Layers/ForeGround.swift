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
    
    //MARK:- VARIABLES
    var controls: SKNode!

    
    
    //MARK:- INIT
    override init() {
        super.init()
        
        name = nodeName.ForeGround
        zPosition = 10
        
        controls = Controls()
        addChild(controls)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
