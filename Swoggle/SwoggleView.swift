//
//  SwoggleView.swift
//  Swoggle
//
//  Created by David Sison on 9/15/16.
//  Copyright © 2016 David Sison. All rights reserved.
//

import Foundation
import UIKit

protocol SwoggleViewProtocol: class {
    func resetButtonPressed()
}

class SwoggleView: UIView {
    private weak var observer: SwoggleViewProtocol?
    
    @IBOutlet weak var swoggleButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBAction func resetButtonTapped(_ sender: AnyObject) {
        print("Hello")
        self.observer?.resetButtonPressed()
    }
    
    func setObserver(observer: SwoggleViewProtocol) {
        self.observer = observer
    }
}
