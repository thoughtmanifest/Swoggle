//
//  SwoggleModel.swift
//  Swoggle
//
//  Created by David Sison on 9/15/16.
//  Copyright © 2016 David Sison. All rights reserved.
//

import Foundation

class SwoggleModel {
    func randomLetter() -> String {
        let letters: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let rand = Int(arc4random_uniform(26))
        let stringArray = Array(letters.characters)
        return String(stringArray[rand])
    }
}
