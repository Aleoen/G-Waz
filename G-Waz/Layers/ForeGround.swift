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
    var view: SKView!

    
    
    //MARK:- INIT
    init(view: SKView) {
        super.init()
        self.view = view
        
        name = nodeName.ForeGround
        zPosition = 10
        
        controls = Controls(view: view)
        addChild(controls)
        
        
        
        let shape = SKShapeNode(rect: view.frame)
          shape.strokeColor = SKColor.red
        shape.lineWidth = 1.0
          addChild(shape)
        print(shape.position)
        print(shape.frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
