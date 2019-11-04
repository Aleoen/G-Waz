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
    
    let offset = CGFloat(5)
    let buttonSpace = CGPoint(x: 80, y: 50)
    
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
        setupButtons()
    }
    
    //MARK:- SETUPS
    
    func setupButtons() {
        buttons.append(Button.setupForInteractiveControl(fileNamed: "Button", with: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), and: "0") as! Button)
        buttons.append(Button.setupForInteractiveControl(fileNamed: "Button", with: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), and: "X") as! Button)
        buttons.append(Button.setupForInteractiveControl(fileNamed: "Button", with: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), and: "A") as! Button)
        
        
        for button in buttons {
            addChild(button)
        }
        
        setButtonsPosition()
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
    
    // MARK:- METHODS
    
    func setButtonsPosition() {
        let numberOfButtons = buttons.count
           
        switch numberOfButtons {
        case 0,1:
            print("No need to sort")
        case 2,3:
            for index in 0...numberOfButtons-1 {
                buttons[index].position = CGPoint(x: -CGFloat(index) * buttonSpace.x, y: CGFloat(numberOfButtons - 1 - index) * buttonSpace.y)
            }
        default:
           fatalError("Unable to sort: To many buttons")
       }
    }
    
}
