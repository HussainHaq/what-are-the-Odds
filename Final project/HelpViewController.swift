//
//  HelpViewController.swift
//  Final project
//
//  Created by Hussain Haq  on 12/21/16.
//  Copyright © 2016 Hussain Haq . All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    
    @IBOutlet weak var helpLabel: UILabel!
    var help = "What are the odds is like a \n truth or dare type of game, but the \n the one being dared to do something has 1/5 chance of doing what he/she is\n suppose to. What are the odds is also\n like a normal dice or luck game. It's\n pretty stright forward, have fun and \n enjoy."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    helpLabel.text! = help
        
    }
    
}
