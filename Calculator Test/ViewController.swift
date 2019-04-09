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
    var resultNumber: Double = 0
    func setbuttons() {
        for every in buttons {
            every.titleLabel?.text = "\(every.tag-1)"
            every.backgroundColor = .darkGray
            every.titleLabel?.textColor = .white
        }
        for every in buttonses {
            switch every.tag {
            case 11...13:
                every.backgroundColor = .lightGray
                every.titleLabel?.textColor = .white
            case 14...18:
                every.backgroundColor = .orange
                every.titleLabel?.textColor = .white
            case 19:
                every.backgroundColor = .darkGray
            default:
                print("error in setting functional buttons")
            }
        }
    }
    func setLabel() {
        result.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting background
        view.backgroundColor = .black
        setLabel()
        setbuttons()
    }

   
}

