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
    
    let offset = CGPoint(x: 5, y: 40)
    let buttonSpace = CGPoint(x: 60, y: 30)
    
    let testCompletions = [{
    () -> Void in
    print("Ahhhh")
},{
        () -> Void in
        print("Brrrrrrr")
    }]
    
    //MARK:- VARIABLES
    
    var buttons: [Button] = [Button]()
    var pad: Pad!
    var view: SKView!
    
    //MARK:- INIT
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init() {
        super.init()
        name = nodeName.controls
        setupButtons()
        setupPad()
    }
    
    //MARK:- SETUPS
    
    func setupButtons() {
        buttons.append(Button.setupForElementaryControl(fileNamed: "Button", with: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), and: "0", perform: testCompletions) as! Button)
        buttons.append(Button.setupForElementaryControl(fileNamed: "Button", with: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), and: "X", perform: testCompletions) as! Button)
        buttons.append(Button.setupForElementaryControl(fileNamed: "Button", with: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), and: "A", perform: testCompletions) as! Button)
        
        for button in buttons {
            addChild(button)
            button.setScale(0.7)
        }
        
        setButtonsPosition()
        
    }
    
    func setupPad() {
        pad = (Pad.setupForElementaryControl(fileNamed: "Pad", with: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), and: "None", perform: testCompletions) as! Pad)
        addChild(pad)
        pad.setScale(0.5)

    }
    
    // MARK:- UPDATE
    
    func updatePosition() {
        guard let scene = scene else {
            fatalError("No scene found to define Controls position")
        }
        position = CGPoint(
            x: scene.frame.width/2 - offset.x,
            y: -scene.frame.height/2 + offset.y )
        
        // Update children nodes positions
        pad.position = CGPoint(
            x: -scene.frame.width + offset.x * 2, y: 0)
    }
    
    // MARK:- METHODS
    
    func setButtonsPosition() {
        let numberOfButtons = buttons.count
           
        switch numberOfButtons {
        case 0:
            print("No need to sort")
        case 1:
            buttons[0].position = CGPoint.zero
        case 2,3:
            for index in 0...numberOfButtons-1 {
                buttons[index].position = CGPoint(
                    x: -CGFloat(index) * buttonSpace.x,
                    y: CGFloat(numberOfButtons - 1 - index) * buttonSpace.y)
            }
        default:
           fatalError("Unable to sort: To many buttons")
       }
    }
    
}
