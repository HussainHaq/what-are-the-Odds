//
//  ViewController.swift
//  Final project
//
//  Created by Hussain Haq  on 12/8/16.
//  Copyright © 2016 Hussain Haq . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue:
        UIStoryboardSegue, sender: Any?){
        if segue.identifier == "helpPage"{
            let vc = segue.destination as!
                UIViewController
            vc.title = "HelpViewController"
            }
        }
    }
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetial"{
            let vc = segue.destination as! UIViewController
            vc.title = "secondViewController"
        }
    }

