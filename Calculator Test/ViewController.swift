//
//  ViewController.swift
//  Calculator Test
//
//  Created by Tomasz Kielar on 09/04/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var buttonses: [UIButton]!
    @IBOutlet weak var result: UILabel!
    let settingUps = setups()
    let core = calculatorCore()
    
  
    @IBAction func numbers(_ sender: UIButton) {
        core.numberPressed(sender: sender, result: result)
    }
    @IBAction func functionKeys(_ sender: UIButton) {
        core.functionKeysPressed(sender: sender, result: result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting background
        view.backgroundColor = .black
        settingUps.setbuttons(numbers: buttons, functions: buttonses)
        settingUps.setLabel(result: result, resultNumber: 0)
        settingUps.setLogo(view: self,button: result)
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        swipe.direction = UISwipeGestureRecognizer.Direction.right
   
        result.isUserInteractionEnabled = true
        result.addGestureRecognizer(swipe)
        
    }
 

    @objc func swipeAction(swipe:UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1:
            print("works?")
            core.dropsonLast(result:result)
        default:
            break
        }
    }}

