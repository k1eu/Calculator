//
//  functions.swift
//  Calculator Test
//
//  Created by Tomasz Kielar on 09/04/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class setups {
    func setbuttons(numbers: [UIButton],functions: [UIButton]) {
        for every in numbers {
            every.titleLabel!.text = "\(every.tag-1)"
            every.backgroundColor = .darkGray
            every.titleLabel?.textColor = .white
            every.layer.cornerRadius = 15
        }
        for every in functions {
            switch every.tag {
            case 11...13:
                every.backgroundColor = .lightGray
                every.titleLabel?.textColor = .white
                every.layer.cornerRadius = 15
            case 14...18:
                every.backgroundColor = .orange
                every.titleLabel?.textColor = .white
                every.layer.cornerRadius = 15
            case 19:
                every.backgroundColor = .darkGray
                every.layer.cornerRadius = 15
            default:
                print("error in setting functional buttons")
            }
        }
    }
    func setLabel(result:UILabel,resultNumber: Double) {
        result.text = "\(resultNumber)"
        result.textColor = .white
    }
}
