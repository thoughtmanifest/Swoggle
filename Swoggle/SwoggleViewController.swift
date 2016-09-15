//
//  SwoggleViewController.swift
//  Swoggle
//
//  Created by David Sison on 9/15/16.
//  Copyright © 2016 David Sison. All rights reserved.
//

import Foundation
import UIKit

class SwoggleViewController: UIViewController, SwoggleViewProtocol {
    var swoggleView: SwoggleView?
    var swoggleModel: SwoggleModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swoggleView = view as? SwoggleView
        swoggleView?.setObserver(observer: self)
        
        swoggleModel = SwoggleModel()
        
        // start with random letter instead of title
        resetButtonPressed()
    }
    
    func resetButtonPressed() {
        print("I wish I was eating a cupcake")
        let randomLetter = swoggleModel?.randomLetter()
        swoggleView?.swoggleButton.setTitle(randomLetter, for: UIControlState.normal)
    }
}
