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
    var defaultValue: Double = 0
    let settingUps = setups()
    var firstNumber:Double = 0
    var secondNumber:Double = 0
    var char:String = ""
    var previousValue = ""
    var output : Double = 0
    
  
    @IBAction func numbers(_ sender: UIButton) {
        previousValue = result.text!
        let pressedValue = sender.titleLabel?.text
       // result.text = NSString(format: "\(previ)%i", value!) as String
        if previousValue == String(0.0) || previousValue == "Error"  || previousValue == char {
            result.text = "\(pressedValue!)"
        }
        else {
        result.text = "\(previousValue+pressedValue!)"
        }
    }
    @IBAction func functionKeys(_ sender: UIButton) {
        previousValue = result.text!
        if previousValue == "0.0" {
            result.text = "Error2"
        }
        else {
            result.text = "\(previousValue)"
            switch sender.tag {
            case 11:
                result.text = "\(defaultValue)"
            case 12:
                print("change to minus")
            case 13...17:
                firstNumber = Double(result.text!) as! Double
                char = sender.titleLabel!.text!
                result.text = char
            case 18:
                secondNumber = Double(result.text!) as! Double
                switch char {
                case "%":
                    print("XD")
                case "/":
                    output = firstNumber/secondNumber
                    result.text = "\(output)"
                case "X":
                    output = firstNumber*secondNumber
                    result.text = "\(output)"
                case "-":
                    output = firstNumber-secondNumber
                    result.text = "\(output)"
                case "+":
                    output = firstNumber+secondNumber
                    result.text = "\(output)"
                default:
                    result.text = "Error"
                }
            default:
                print("xd")
                
            }
        }
        print(char)
        print("liczba1: \(firstNumber)")
        print("liczba2: \(secondNumber)")
        print("wynik: \(output)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting background
        view.backgroundColor = .black
        settingUps.setbuttons(numbers: buttons, functions: buttonses)
        settingUps.setLabel(result: result, resultNumber: defaultValue)
    }

   
}

