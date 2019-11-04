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
    
    //MARK:- CONSTANTS
    
    let offset = CGFloat(30)
    let buttonSpace = CGFloat(10)
    
    //MARK:- VARIABLES
    
    var buttons: [Button] = [Button]()
    var view: SKView!
    
    
    
    
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
            buttons[0].position = CGPoint(x: 0,y: 150)
            buttons[1].position = CGPoint(x: -buttons[0].size.width - buttonSpace,y: 100)
            buttons[2].position = CGPoint(x: buttons[1].position.x - buttons[1].size.width-buttonSpace,y: 50)
        default:
            fatalError("Unable to sort: To many buttons")
        }
        
        if buttons.count >= 2 {
            
        }
        
    }
    
    // MARK:- UPDATE
    func updatePosition() {
        guard let scene = scene else {
            fatalError("No scene found to define Controls position")
        }
        position = CGPoint(
            x: scene.frame.width/2 - offset,
            y: -scene.frame.height/2 + offset )
    }
}
