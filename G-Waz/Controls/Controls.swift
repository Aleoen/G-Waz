//
//  JoystickControls.swift
//  G-Waz
//
//  Created by Bertrand Pouteau on 10/10/2019.
//  Copyright © 2019 Behr. All rights reserved.
//

import SpriteKit

/**
 Node managing buttons and joysticks
 */
class Controls : SKNode {
    
    //MARK:- VARIABLES
    var buttons: [Button] = [Button]()
    
    
    
    
    
    //MARK:- INIT
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        super.init()
        
        name = nodeName.Controls
        
        buttons.append(Button.setupForInteractiveControl(parentNode: self, fileNamed: "Button", with: SKColor.blue, and: "X") as! Button)
        buttons.append(Button.setupForInteractiveControl(parentNode: self, fileNamed: "Button", with: SKColor.orange, and: "Z") as! Button)
        buttons.append(Button.setupForInteractiveControl(parentNode: self, fileNamed: "Button", with: SKColor.green, and: "Y") as! Button)

        sortButton()
    }
    
    func sortButton() {
        let numberOfButtons = buttons.count
        
        switch numberOfButtons {
        case 0,1:
            print("No need to sort")
        case 2:
            buttons[0].position = CGPoint(x: buttons[0].size.width/2,y: 10)
            buttons[1].position = CGPoint(x: -buttons[1].size.width/2,y: -10)
        case 3:
            buttons[0].position = CGPoint(x: buttons[0].size.width,y: 20)
            buttons[2].position = CGPoint(x: -buttons[2].size.width,y: -20)
        default:
            fatalError("Unable to sort: To many buttons")
        }
        
        if buttons.count >= 2 {
            
        }
        
    }
    
}
