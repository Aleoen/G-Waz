//
//  MiddleGround.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 11/11/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

class MiddleGround: SKNode {
    
    //MARK:- CONSTANTS
    
    //MARK:- VARIABLES
    
    var ship: Ship!
    
    //MARK:- INIT
    
    override init() {
        super.init()
        name = nodeName.middleGround
        ship = Ship.setup()
        addChild(ship)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- SETUPS
    
    //MARK:- METHODS
    

    
    
}
